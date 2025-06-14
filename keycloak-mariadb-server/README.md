# keycloak-mariadb-server (Port 8090)
## Installation
Run `bash INSTALL`
## Database
### User(s) and Role(s)
#### Keycloak
|Role|User|Password|
|---|---|---|
|:dark_circle: Administrator|admin|`admin`|
|:light_circle: User|ccmak|`ccmak`|
|:light_circle: User|benny|`benny`|
#### MariaDB 
|User@Host|Password|Grant|
|---|---|---|
|`root@localhost`|`admin`|ALL ON `*`.`*`|
|`root@%`|`admin`|ALL ON `*`.`*`|
|`keycloak@%`|`keycloak`|ALL ON `keycloak`.`*`|
|`keycloak@%`|`keycloak`|ALL ON `c_keycloak_storage`.`*`|
### Database
- `c_keycloak_storage`
- `keycloak`
