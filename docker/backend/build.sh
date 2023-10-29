#!/bin/bash

IMAGE=${IMAGE:-"todo-be_i"}
DOCKERFILE=${DOCKERFILE:-"Dockerfile.dev"}

docker build \
    -t ${IMAGE} \
    -f ${DOCKERFILE} ./ \
    --build-arg UID=`id -u` \
    --build-arg GID=`id -g` \
    --build-arg UNAME=`id -un` \
    --build-arg GNAME=`id -gn`
