# keycloak-server (Port 8080)
## Settings
|Parameter(s)|Value<br/>(Default)|
|---|---|
|:green_circle: REALM|flask-sso-auth-service|
|:green_circle: Client ID|flask-sso-auth-service-client-id|
|:green_circle: User|ccmak(Password:ccmak)|
|:green_circle: Email Sender (Test Account)|appsheet.mcc@gmail.com|
## Secret
- :green_circle: Client Secret: `vQxkY3uqS7yiq7v1AYx7rH9dlbw1cYhI`
- :green_circle: App Password: `tgib zvqh samm utok`
## Testcase(s)
|Action(s)|Testcase(s)|
|---|---|
|:green_circle: Login<br/>(Administrator)|http://192.168.68.130:8080/admin|
|:green_circle: Login (User)|http://192.168.68.130:8080/realms/flask-sso-auth-service/account|
|:orange_circle: Login through API|`REALM=flask-sso-auth-service; CLIENT_ID=flask-sso-auth-service-client-id; CLIENT_SECRET=vQxkY3uqS7yiq7v1AYx7rH9dlbw1cYhI; CLIENT_USERNAME=ccmak; CLIENT_PASSWORD=ccmak; curl -X POST http://192.168.68.130:8080/realms/$REALM/protocol/openid-connect/token -H "Content-Type: application/x-www-form-urlencoded" -d "grant_type=password" -d "client_id="$CLIENT_ID -d "client_secret="$CLIENT_SECRET -d "username="$CLIENT_USERNAME -d "password="$CLIENT_PASSWORD`|
|:orange_circle: Logout through API|`REALM=flask-sso-auth-service; CLIENT_ID=flask-sso-auth-service-client-id; CLIENT_SECRET=vQxkY3uqS7yiq7v1AYx7rH9dlbw1cYhI; REFRESH_TOKEN="<TOKEN>"; curl -X POST http://192.168.68.130:8080/realms/$REALM/protocol/openid-connect/logout -H "Content-Type: application/x-www-form-urlencoded" -d "client_id="$CLIENT_ID -d "client_secret="$CLIENT_SECRET -d "refresh_token="$REFRESH_TOKEN`|
