# PERFT - Bunch of utilities in docker

An alpine based Docker image with utilites telnet, curl, jq.

__ How to build the docker image in a unrestricted env?

You can use the provided Dockerfile to build the image.

__ How to build the docker image in user space or in unpriviledge mode or without docker engine dependency? **

Docker shim is removed in the latest Kubernetes/k8, so DND image building is not more an option. Here we are exploring Kaniko to build docker image in a k8 deployment with only user space access. 

kubectl.cmd.sh
