#!/bin/bash

## Config
GITHUB_REPO_URL="https://siminsadanandan@github.com/siminsadanandan/perft.git"
GITHUB_REPO_AUTHKEY=""

DOCKER_USERNAME="sisadana"
DOCKER_PASSWORD=""
DOCKER_REPO_NAME="sisadana"
DOCKER_IMAGE_NAME="perft"
DOCKER_IMAGE_TAG="1.0"

##Clone the repo
git clone ${GITHUB_REPO_URL}

cd perft

##Login to docker repo to push the image that is build
echo $DOCKER_PASSWORD | docker login --username $DOCKER_USERNAME --password-stdin

##Build and push the image to repo
docker build --no-cache \
  -t "${DOCKER_REPO_NAME}/${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_TAG}" .
