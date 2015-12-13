FROM python:3.5-slim
MAINTAINER Mopsalarm


RUN mkdir -p /app
WORKDIR /app

ONBUILD COPY requirements.txt /tmp
ONBUILD RUN pip install --no-cache-dir -r /tmp/requirements.txt
ONBUILD COPY . /app
