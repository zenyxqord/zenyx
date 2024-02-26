#!/usr/bin/env bash

export LC_ALL=C

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/.. || exit

DOCKER_IMAGE=${DOCKER_IMAGE:-zenyxqord/zenyxd-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/zenyxd docker/bin/
cp $BUILD_DIR/src/zenyx-cli docker/bin/
cp $BUILD_DIR/src/zenyx-tx docker/bin/
strip docker/bin/zenyxd
strip docker/bin/zenyx-cli
strip docker/bin/zenyx-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
