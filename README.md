# PERFT - Bunch of utilities in docker

An alpine based Docker image with utilites telnet, curl, jq.

__ How to build the docker image in a unrestricted env? __

You can use the provided Dockerfile to build the image. You can also use the provided _build.sh_ script to build the image by pulling in all the files from repo provided in the script and then build and tag the image before it is pushed to the docker repo provided in the script.

__ How to build the docker image in user space or in unpriviledge mode or without docker engine dependency? __

Docker shim is removed in the latest Kubernetes/k8, so DND image building is not more an option. Here we are exploring Kaniko to build docker image in a k8 deployment with only user space access. 

1. export all the required variables or can be sourced in from the pipeline env variables

`export REGISTRY_ENDPOINT="https://index.docker.io/v1/"
export DOCKER_USERNAME="sisadana"
export DOCKER_PASSWORD=""
export DOCKER_REPO_NAME="sisadana"
export DOCKER_IMAGE_NAME="perft"
export DOCKER_IMAGE_TAG="1.0"
export DOCKER_EMAIL="simin.sadanandan@gmail.com"`

2. run kubectl.cmd.sh from a _kubectl_ shell
- this will create a secret to store the docker registry credentials
- run the script _kaniko-builder-git.yaml_ which pulls the project from the provided public github repo, run the Kaniko build container and build the docker container using the provided _kaniko-builder-git.yaml_ file. Once the contaier is build correctly the image is automatically pushed to the docker repo. 
