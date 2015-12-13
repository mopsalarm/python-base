FROM python:3.5-slim
MAINTAINER Mopsalarm


RUN mkdir -p /app
WORKDIR /app

ONBUILD COPY . /app
ONBUILD RUN pip install --no-cache-dir -r requirements.txt
