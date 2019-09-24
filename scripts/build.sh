#!/bin/bash
set -e
export TAG="latest"
docker login -u $DOCKER_USER -p $DOCKER_PASS
docker build --file Dockerfile --tag blockchainit/zokrates-js-node:$TAG .
docker push blockchainit/zokrates-js-node:$TAG