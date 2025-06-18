
FROM python:3.12 AS bs-flask

ARG KEYCLOAK_IP_ADDRESS
ARG KEYCLOAK_MARIADB_IP_ADDRESS
ARG REACTJS_IP_ADDRESS
ENV KEYCLOAK_MARIADB_IP_ADDRESS=${KEYCLOAK_MARIADB_IP_ADDRESS}
ENV KEYCLOAK_IP_ADDRESS=${KEYCLOAK_IP_ADDRESS}
ENV REACTJS_IP_ADDRESS=${REACTJS_IP_ADDRESS}

WORKDIR /
COPY requirements.txt .
RUN python -m pip install --upgrade pip \
        && python -m pip install -r requirements.txt \
        && python -m pip list

USER root
WORKDIR /app
CMD [ "python", "start.py" ]
# CMD [ "sleep", "infinity" ]