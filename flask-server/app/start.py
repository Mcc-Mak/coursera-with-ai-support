from flask import Flask, redirect, url_for, render_template, request , session , jsonify, send_from_directory
from flask_oidc import OpenIDConnect
import requests, json, base64
from api import *

#
# TODO: Incapable to refresh
#
# with open("client_secrets.json") as f: jsonClient = json.load(f)
# g_CLIENT_SECRET = jsonClient["web"]["client_secret"]
g_CLIENT_SECRET = "gik4U0mU0xQ2EGBOEQlv8zzyUSmr7U9M"

app = Flask(__name__)
app.config['SECRET_KEY'] = g_CLIENT_SECRET
app.debug = True

app.config['OIDC_CLIENT_SECRETS'] = 'client_secrets.json'
app.config['OIDC_COOKIE_SECURE'] = False
app.config['OIDC_CALLBACK_ROUTE'] = '/oidc/callback'
app.config['OIDC_SCOPES'] = ['openid', 'email', 'profile']

# HOSTNAME = "192.168.68.130"
HOSTNAME = "192.168.56.101"

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
    token_url = f'http://{HOSTNAME}:8080/realms/{KEYCLOAK['REALM']}/protocol/openid-connect/token'
    response = requests.post(token_url, data=payload)
    token_data = response.json()
    if response.status_code == 200:
        # Store tokens in the session
        session['access_token'] = token_data.get('access_token')
        session['refresh_token'] = token_data.get('refresh_token')
        session['username'] = CLIENT_USERNAME
        return redirect(url_for("index"))
    else:
        session['error_message'] = "Invalid username or password!"
        return redirect(url_for("index"))

def logout():
    # Clear the session
    session.pop('access_token', None)
    session.pop('refresh_token', None)
    session.pop('username', None)

    # Optionally invalidate the refresh token with Keycloak
    token_url = f'http://{HOSTNAME}:8080/realms/{KEYCLOAK['REALM']}/protocol/openid-connect/logout'
    payload = {
        'client_id': KEYCLOAK['CLIENT_ID'],
        'client_secret': KEYCLOAK['CLIENT_SECRET'],
        'refresh_token': session.get('refresh_token')
    }
    response = requests.post(token_url, data=payload)
    
    return redirect(url_for("index"))

def index():
    if 'access_token' in session:
        return render_template(
            'index.html',
            data={
                "username": session["username"],
                "apis": [ "/api/GetProgramPreview", "/api/GetProgramInfo" ]
            }
        )
    else:
        if 'error_message' in session:
            msg = session['error_message']
            session.pop('error_message', None)
        else:
            msg = None
        return render_template('login.html', msg=msg)

# @app.route('/static/<path:path>')
# def donwload_static(path):
#     return send_from_directory('static', path)

def demo():
    return render_template("demo.html")

if __name__ == '__main__':
    # Demo
    app.add_url_rule("/demo", "demo", demo)
    # Auth
    app.add_url_rule("/", "index", index)
    app.add_url_rule("/login", "login", login, methods=["POST"])
    app.add_url_rule("/log-out", "logout", logout, methods=["POST"])
    # API
    app.add_url_rule("/api/GetProgramPreview", "GetProgramPreview", GetProgramPreview, methods=["GET"])
    app.add_url_rule("/api/GetProgramInfo", "GetProgramInfo", GetProgramInfo, methods=["GET"])
    app.run(host="0.0.0.0", port=5000, debug=True)
