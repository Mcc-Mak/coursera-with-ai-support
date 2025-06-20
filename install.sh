
docker network create -d bridge --subnet=172.18.0.0/16 sso_auth_server 2>/dev/null

# docker rm -f $(docker ps -a --format {{.Names}})
# docker rmi -f $(docker images -aq)

docker rmi $(docker images --filter dangling=true -aq) nil 2>/dev/null

SRV="keycloak-mariadb-server"
printf "\n\n[INFO] Installing '%s'..." "$SRV"
cd $SRV
bash INSTALL
cd ..

SRV="keycloak-server"
printf "\n\n[INFO] Installing '%s'..." "$SRV"
cd $SRV
bash INSTALL
cd ..

SRV="reactjs-server"
printf "\n\n[INFO] Installing '%s'..." "$SRV"
cd $SRV
bash INSTALL
cd ..

SRV="flask-server"
printf "\n\n[INFO] Installing '%s'..." "$SRV"
cd $SRV
bash INSTALL
cd ..

docker rm $(docker ps -aq --filter status=exited) nil 2>/dev/null
