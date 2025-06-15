
# DOCKER_CONTAINER=fs-reactjs-server

DOCKER_NETWORK=sso_auth_server

echo ""
echo "= = = = = = = = = = = = = = = = = = = = = = = = ="
echo ""
echo "[0] Server-level..."
echo ""
for i_DOCKER_NETWORK in docker0 $DOCKER_NETWORK
do
	if [[ $i_DOCKER_NETWORK == "docker0" ]]
	then
		echo "[INFO] IFC="$i_DOCKER_NETWORK
		ip addr show $i_DOCKER_NETWORK | grep "inet "
	else
		ifc="br-"$(docker network ls -f name=$i_DOCKER_NETWORK --format {{.ID}})
		echo "[INFO] IFC="$ifc
		ip addr show $ifc | grep "inet "
	fi
	echo ""
done

echo ""
echo "= = = = = = = = = = = = = = = = = = = = = = = = ="
echo ""
echo "[1] Container-level..."
echo ""
for DOCKER_CONTAINER in $(docker ps --format {{.Names}})
do
	echo "[INFO] DOCKER_CONTAINER="$DOCKER_CONTAINER
	for param in IPAddress Gateway IPPrefixLen
	do
		docker inspect $DOCKER_CONTAINER \
			--format "$param: {{json .NetworkSettings.Networks.$DOCKER_NETWORK.$param}}"
	done
	echo ""
done
echo "= = = = = = = = = = = = = = = = = = = = = = = = ="
echo ""
