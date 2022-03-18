#!/bin/bash

ARCHITECTURE="amd64"
# ARCHITECTURE="arm64"
DOCKER_BASE_IMAGE="ubuntu:20.04"
# DOCKER_BASE_IMAGE="ubuntu:18.04"
DOCKER_FINAL_IMAGE_TAG="atsushisaito/ubuntu-desktop-lxde-vnc:latest-$ARCHITECTURE"

docker buildx build --platform "linux/$ARCHITECTURE" -t \
    "$DOCKER_FINAL_IMAGE_TAG" --build-arg DOCKER_BASE_IMAGE="$DOCKER_BASE_IMAGE" \
    -f "Dockerfile.$ARCHITECTURE" --push .