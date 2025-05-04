#!/bin/bash

echo "Building docker..."
# Build docker file, tag it to comply with Github package formatting
docker build -t ghcr.io/mbishram/karsajobs-ui:latest .
echo "Finished building docker!"

echo
# Load .env.local (NOTE: Remember to copy .env.local.example to .env.local)
set -a && source .env.local && set +a
# Login to github package
echo "Logged in to github package..."
echo $CR_PAT | docker login ghcr.io -u mbishram --password-stdin

echo
# Push to github package
echo "Pushed image to github package..."
docker push ghcr.io/mbishram/karsajobs-ui:latest
