#!/bin/bash

IMAGE=${IMAGE:-"todo-be_i"}
CONTAINER=${CONTAINER:-"todo-be_c"}
APP_HOME=$(dirname $(dirname $(pwd)))/backend

docker run -itd \
    --restart always \
    --name ${CONTAINER} \
    --publish '3001:3000' \
    --volume ${APP_HOME}:/app \
    ${IMAGE}
