#!/bin/bash

PUBLISH_IFACE=wlp2s0

BIN_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

docker volume create --name concourse-db
docker volume create --name concourse-web-keys
docker volume create --name concourse-worker-keys
DOCKERHOST=$(ifconfig ${PUBLISH_IFACE} | grep "inet " | awk -F'[: ]+' '{ print $4 }') docker-compose -f ${BIN_DIR}/../docker-compose.yaml up