# Build and run nginx in a docker container

## Build the docker image for development environment

     docker build -t nma-nginx . -f ./dev/Dockerfile

## Run the docker container in development environment

    docker run -p 3050:80 -p 27020:27020 -d --add-host=host.docker.internal:host-gateway --network=nma-microservices --name nma-nginx nma-nginx

## Build container for aws/cloud environment

For cluster0:
    docker build -t nma-nginx-0 . -f ./aws0/Dockerfile

For cluster1:
    docker build -t nma-nginx . -f ./aws1/Dockerfile


# Good to know

## To get the nginx.conf from the initial container it can be copied by: 
docker run --name tmp-nginx-container -d nginx
docker cp nma-nginx:/etc/nginx/nginx.conf ./original_nginx.conf
docker rm -f tmp-nginx-container