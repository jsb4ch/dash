#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-jsb4ch/kashd-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/kashd docker/bin/
cp $BUILD_DIR/src/kash-cli docker/bin/
cp $BUILD_DIR/src/kash-tx docker/bin/
strip docker/bin/kashd
strip docker/bin/kash-cli
strip docker/bin/kash-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
