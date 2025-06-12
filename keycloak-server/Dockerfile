
FROM quay.io/keycloak/keycloak:26.2.5 AS bs-keycloak

ARG KEYCLOAK_MARIADB_IP_ADDRESS

ENV KC_BOOTSTRAP_ADMIN_USERNAME=admin
ENV KC_BOOTSTRAP_ADMIN_PASSWORD=admin

# Set environment variables for Keycloak
ENV KC_DB=mariadb
ENV KC_DB_PROVIDER=mariadb
ENV KC_DB_URL=jdbc:mariadb://${KEYCLOAK_MARIADB_IP_ADDRESS}:3306/keycloak
ENV KC_DB_USERNAME=keycloak
ENV KC_DB_PASSWORD=keycloak

# Set the entrypoint for the container
ENTRYPOINT ["bin/kc.sh", "start-dev"]
