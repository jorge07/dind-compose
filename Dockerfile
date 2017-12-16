FROM docker:17.11.0-ce-dind

LABEL maintainer="jorge.arcoma@gmail.com"

ARG DOCKER_COMPOSE_VERSION=1.17.1

RUN apk add -U \
    py-pip \
  && pip install docker-compose==$DOCKER_COMPOSE_VERSION \
  && rm -rf /var/cache/apk/*
