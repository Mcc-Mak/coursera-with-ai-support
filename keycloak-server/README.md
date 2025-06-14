# keycloak-server (Port 8080)
## Installation
Run `bash INSTALL`
## How to start server?
Run `/opt/keycloak/bin/kc.sh start-dev`
## Settings
|Parameter(s)|Value<br/>(Default)|
|---|---|
|:green_circle: REALM|flask-sso-auth-service|
|:green_circle: Client ID|flask-sso-auth-service-client-id|
|:green_circle: User|`ccmak`(Password:`ccmak`)|
|:green_circle: Email Sender (Test Account)|appsheet.mcc@gmail.com|
## Secret
- :green_circle: Client Secret: `gik4U0mU0xQ2EGBOEQlv8zzyUSmr7U9M`
- :green_circle: App Password: `tgib zvqh samm utok`
## Testcase(s)
|Action(s)|Testcase(s)|
|---|---|
|:green_circle: Login<br/>(Administrator)|http://192.168.68.130:8080/admin|
|:green_circle: Login (User)|http://192.168.68.130:8080/realms/flask-sso-auth-service/account|
|:green_circle: Login through API|`REALM=flask-sso-auth-service; CLIENT_ID=flask-sso-auth-service-client-id; CLIENT_SECRET=gik4U0mU0xQ2EGBOEQlv8zzyUSmr7U9M; CLIENT_USERNAME=ccmak; CLIENT_PASSWORD=ccmak; curl -X POST http://192.168.68.130:8080/realms/$REALM/protocol/openid-connect/token -H "Content-Type: application/x-www-form-urlencoded" -d "grant_type=password" -d "client_id="$CLIENT_ID -d "client_secret="$CLIENT_SECRET -d "username="$CLIENT_USERNAME -d "password="$CLIENT_PASSWORD`|
|:green_circle: Logout through API|`REALM=flask-sso-auth-service; CLIENT_ID=flask-sso-auth-service-client-id; CLIENT_SECRET=gik4U0mU0xQ2EGBOEQlv8zzyUSmr7U9M; REFRESH_TOKEN="<TOKEN>"; curl -X POST http://192.168.68.130:8080/realms/$REALM/protocol/openid-connect/logout -H "Content-Type: application/x-www-form-urlencoded" -d "client_id="$CLIENT_ID -d "client_secret="$CLIENT_SECRET -d "refresh_token="$REFRESH_TOKEN`|
