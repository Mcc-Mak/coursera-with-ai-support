
FROM python:3.12.5-slim-bullseye AS bs-agentic-ai-owl

WORKDIR /app/owl-server/
COPY ./resources/owl /app/owl-server

RUN apt-get update && apt-get -y upgrade
RUN python -m pip install --upgrade pip wheel setuptools
RUN python -m pip install -e .

ENTRYPOINT [ "sleep", "infinity" ]
