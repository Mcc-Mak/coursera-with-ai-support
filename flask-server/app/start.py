from flask import Flask, redirect, url_for, render_template, request , session , jsonify, send_from_directory
from flask_oidc import OpenIDConnect
import requests, json, base64
from api import *
from flask_cors import CORS, cross_origin
from datetime import datetime
import mariadb

g_CLIENT_SECRET = "gik4U0mU0xQ2EGBOEQlv8zzyUSmr7U9M"

app = Flask(__name__)
cors = CORS(app) # allow CORS for all domains on all routes.
app.config['CORS_HEADERS'] = 'Content-Type'
app.config['SECRET_KEY'] = g_CLIENT_SECRET
app.debug = True

app.config['OIDC_CLIENT_SECRETS'] = 'client_secrets.json'
app.config['OIDC_COOKIE_SECURE'] = False
app.config['OIDC_CALLBACK_ROUTE'] = '/oidc/callback'
app.config['OIDC_SCOPES'] = ['openid', 'email', 'profile']

import os
from dotenv import load_dotenv
load_dotenv()

WEBSERVER_HOSTNAME = "192.168.68.130"

KEYCLOAK = {
    "REALM": "flask-sso-auth-service",
    "CLIENT_ID": "flask-sso-auth-service-client-id",
    "CLIENT_SECRET": g_CLIENT_SECRET
}

oidc = OpenIDConnect(app)

encodeBase64 = lambda x: base64.b64encode(bytes(x, 'utf-8')).decode('utf-8')
decodeBase64 = lambda x: base64.b64decode(x).decode('utf-8')

def login():    
    data = request.form
    CLIENT_USERNAME = data.get('username')
    CLIENT_PASSWORD = data.get('password')

    payload = {
        'grant_type': 'password',
        'client_id': KEYCLOAK['CLIENT_ID'],
        'client_secret': KEYCLOAK['CLIENT_SECRET'],
        'username': CLIENT_USERNAME,
        'password': CLIENT_PASSWORD
    }
    token_url = f'http://{os.getenv('KEYCLOAK_IP_ADDRESS')}:8080/realms/{KEYCLOAK['REALM']}/protocol/openid-connect/token'
    response = requests.post(token_url, data=payload)
    token_data = response.json()
    if response.status_code == 200:
        # Store tokens in the session
        session['access_token'] = token_data.get('access_token')
        session['refresh_token'] = token_data.get('refresh_token')
        session['username'] = CLIENT_USERNAME
        # SQL (C)
        conn = mariadb.connect(
            host=os.getenv('KEYCLOAK_MARIADB_IP_ADDRESS'),
            user="keycloak",
            password="keycloak",
            database="c_keycloak_storage"
        )
        conn.autocommit = False
        cur = conn.cursor()
        cur.execute(
            "INSERT INTO c_keycloak_storage.access_token_storage (username, access_token, user_ip_addr, expiry_interval) VALUES (?, ?, ?, ?)",
            (session["username"], session["access_token"], request.remote_addr, 60)
        )
        conn.commit()
        conn.close()
        return redirect(url_for("index"))
    else:
        session['error_message'] = "Invalid username or password!"
        return redirect(url_for("index"))

@cross_origin()
def logout():
    # SQL (D)
    try:
        conn = mariadb.connect(
            host=os.getenv('KEYCLOAK_MARIADB_IP_ADDRESS'),
            user="keycloak",
            password="keycloak",
            database="c_keycloak_storage"
        )
        try:
            conn.autocommit = False
            cur = conn.cursor()
            sql_stmt = f"UPDATE c_keycloak_storage.access_token_storage SET is_active = 0 WHERE user_ip_addr = '{request.remote_addr}' AND is_active = 1"
            cur.execute(sql_stmt)
            conn.commit()
            
            # Clear the session
            session.pop('access_token', None)
            session.pop('refresh_token', None)
            session.pop('username', None)

            # Optionally invalidate the refresh token with Keycloak
            token_url = f'http://{os.getenv('KEYCLOAK_IP_ADDRESS')}:8080/realms/{KEYCLOAK['REALM']}/protocol/openid-connect/logout'
            payload = {
                'client_id': KEYCLOAK['CLIENT_ID'],
                'client_secret': KEYCLOAK['CLIENT_SECRET'],
                'refresh_token': session.get('refresh_token')
            }
            response = requests.post(token_url, data=payload)
            
            session["error_message"] = "Logged out."
        except:
            print("[start.py] DB - Logout failed!")
        finally:
            conn.close()
    except:
        print("[start.py] DB - Connection failed!")
    finally:
        return redirect(url_for("index"))

def index():
    print(isAuthorized())
    if isAuthenticated():
        return redirect(f"http://{WEBSERVER_HOSTNAME}:9001/")
    else:
        return render_template('login.html', msg=session.pop('error_message', None))

def isAuthorized():
    try:
        conn = mariadb.connect(
            host=os.getenv('KEYCLOAK_MARIADB_IP_ADDRESS'),
            user="keycloak",
            password="keycloak",
            database="keycloak"
        )
        try:
            cur = conn.cursor()
            sql_stmt = f"SELECT A.username, C.name FROM USER_ENTITY A INNER JOIN USER_ROLE_MAPPING B ON B.USER_ID = A.ID INNER JOIN KEYCLOAK_ROLE C ON C.ID = B.ROLE_ID INNER JOIN c_keycloak_storage.access_token_storage D ON D.username = A.username AND UNIX_TIMESTAMP() < UNIX_TIMESTAMP(D.created_at) + D.expiry_interval AND D.is_active = 1 WHERE D.user_ip_addr = '{request.remote_addr}' AND C.name like '{"coursera-price-plan"}%'"
            cur.execute(sql_stmt)
            response = cur.fetchall()
        except:
            print("[start.py] DB - Authorization failed!")
        finally:
            conn.close()
        return response
    except:
        print("[start.py] DB - Connection failed!")
        return None

def isAuthenticated():
    # SQL (R)
    try:
        conn = mariadb.connect(
            host=os.getenv('KEYCLOAK_MARIADB_IP_ADDRESS'),
            user="keycloak",
            password="keycloak",
            database="c_keycloak_storage"
        )
        try:
            cur = conn.cursor()
            sql_stmt = f"SELECT * FROM c_keycloak_storage.access_token_storage WHERE user_ip_addr = '{request.remote_addr}' AND UNIX_TIMESTAMP() < UNIX_TIMESTAMP(created_at) + expiry_interval AND is_active = 1"
            cur.execute(sql_stmt)
            t_sessions = cur.fetchall()
            response = True if len(t_sessions)>0 else False
        except:
            response = False
        finally:
            conn.close()
        return response
    except:
        print("[start.py] DB - Connection failed!")
        return None

@cross_origin()
def validateToken():
    if isAuthenticated():
        return json.dumps({"isValidToken": True},indent=4)
    else:
        return json.dumps({"isValidToken": False},indent=4)

if __name__ == '__main__':
    # Auth
    app.add_url_rule("/", "index", index)
    app.add_url_rule("/login", "login", login, methods=["POST"])
    app.add_url_rule("/log-out", "logout", logout, methods=["POST", "GET"])
    app.add_url_rule("/validateToken", "validateToken", validateToken)
    # API
    app.add_url_rule("/api/GetProgramPreview", "GetProgramPreview", GetProgramPreview, methods=["GET"])
    app.add_url_rule("/api/GetProgramInfo", "GetProgramInfo", GetProgramInfo, methods=["GET"])
    # run server
    app.run(host="0.0.0.0", port=5000, debug=True)
