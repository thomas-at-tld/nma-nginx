# Build and run nginx in a docker container

## Build the docker image for development environment

     docker build -t nma-nginx . -f ./dev/Dockerfile

## Run the docker container in development environment

    docker run -p 3050:80 -d --network=nma-microservices --name nma-nginx nma-nginx

## Build container for aws/cloud environment

     docker build -t nma-nginx . -f ./aws/Dockerfile
