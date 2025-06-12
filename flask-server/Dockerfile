
FROM python:3.12 AS bs-flask

WORKDIR /
COPY requirements.txt .
RUN python -m pip install --upgrade pip \
        && python -m pip install -r requirements.txt \
        && python -m pip list

USER root
WORKDIR /app
CMD [ "python", "start.py" ]
# CMD [ "sleep", "infinity" ]