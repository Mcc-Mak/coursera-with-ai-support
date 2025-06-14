# keycloak-mariadb-server (Port 8090)
## Installation
Run `bash INSTALL`
## Database
### User(s) and Role(s)
#### Keycloak
|Role|User|Password|
|---|---|---|
|:black_circle: Administrator|admin|`admin`|
|:white_circle: User|ccmak|`ccmak`|
|:white_circle: User|benny|`benny`|
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
