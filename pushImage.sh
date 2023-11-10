#!/bin/bash

imageName="nma-nginx"
dockerFile="./aws1/Dockerfile"
imageBuildCommand="build -t $imageName . -f $dockerFile"

# Build image, tag and push to aws
source ../scripts/pushToAws.sh "$imageName" "$imageBuildCommand"



