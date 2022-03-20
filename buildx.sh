#!/bin/bash

ARCHITECTURE="amd64"
# ARCHITECTURE="arm64"
BASE_IMAGE="focal"
# BASE_IMAGE="bionic"
# BASE_IMAGE="latest"
DOCKER_FINAL_IMAGE_TAG="atsushisaito/docker-ubuntu-vnc-desktop:$BASE_IMAGE-$ARCHITECTURE"

docker buildx build --platform "linux/$ARCHITECTURE" -t \
    "$DOCKER_FINAL_IMAGE_TAG" --build-arg BASE_IMAGE="ubuntu:$BASE_IMAGE" \
    -f "Dockerfile.$ARCHITECTURE" --push .