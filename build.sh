#!/bin/bash

## Config
GITHUB_REPO_NAME="https://github.com/siminsadanandan/perft.git"
GITHUB_REPO_AUTHKEY=""
GITHUB_REPO_USR=""


DOCKER_USERNAME=sisadana
DOCKER_PASSWORD=
DOCKER_REPO_NAME="sisadana/mjolnir"
DOCKER_IMAGE_NAME="perft"
DOCKER_IMAGE_TAG="1.0"
echo $DOCKER_PASSWORD | docker login --username $DOCKER_USERNAME --password-stdin

docker build --no-cache \
  -t "${DOCKER_REPO_NAME}/${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_TAG}" .
