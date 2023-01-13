kubectl create secret \
    docker-registry regcred \
    --docker-server=$REGISTRY_ENDPOINT \
    --docker-username=$DOCKER_USERNAME \
    --docker-password=$DOCKER_PASSWORD \
    --docker-email=$DOCKER_EMAIL

kubectl apply \
    --filename kaniko-builder-git.yaml
    
kubectl wait \
    --for condition=containersready \
    pod kaniko-builder-git
