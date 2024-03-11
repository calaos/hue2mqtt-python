# syntax = docker/dockerfile:1.0-experimental

FROM python:3.11-slim

RUN pip install --upgrade pip

COPY . /hue2mqtt-python

WORKDIR /hue2mqtt-python

RUN pip install .

CMD ["hue2mqtt", "-c", "/config/hue2mqtt.toml"]
