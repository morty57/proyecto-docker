#!/bin/bash
set -e

source .env

IMAGE_NAME="$DOCKERHUB_USERNAME/$DOCKERHUB_REPO:$IMAGE_TAG"

docker build -t $IMAGE_NAME ./app
docker login
docker push $IMAGE_NAME