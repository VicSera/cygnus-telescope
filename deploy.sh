#!/bin/bash

# Update the container to use the new image
docker container kill telescope
docker container rm telescope
docker pull vicsera/cygnus:telescope
docker run --name telescope -d -p 81:80 vicsera/cygnus:telescope
docker image prune -f
