#!/bin/bash

echo "Building docker..."
# Build docker file, tag it with item-app and version v1
docker build -t item-app:v1 .
echo "Finished building docker!"

echo
echo "List of local images:"
# Show list of local images
docker image ls

echo
# Updating image tag to comply with github package format
docker tag item-app:v1 ghcr.io/mbishram/item-app:v1
# Load .env (NOTE: Remember to copy .env.example to .env)
set -a && source .env && set +a
# Login to github package
echo "Logged in to github package..."
echo $CR_PAT | docker login ghcr.io -u mbishram --password-stdin

echo
# Push to github package
echo "Pushed image to github package..."
docker push ghcr.io/mbishram/item-app:v1
