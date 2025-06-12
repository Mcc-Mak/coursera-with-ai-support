
docker network -d bridge sso_auth_server 2>/dev/null

docker rmi $(docker images --filter dangling=true -aq) nil 2>/dev/null

SRV="flask-server"
printf "\n\n[INFO] Installing '%s'..." "$SRV"
cd $SRV
bash INSTALL
cd ..

SRV="keycloak-mariadb-server"
printf "\n\n[INFO] Installing '%s'..." "$SRV"
cd $SRV
bash INSTALL
cd ..

SRV="keycloak-server"
printf "\n\n[INFO] Installing '%s'..." "$SRV"
cd $SRV
bash INSTALL

docker rm $(docker ps -aq --filter status=exited) nil 2>/dev/null
