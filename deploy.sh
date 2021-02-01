#!/bin/bash

# Create a new production build
ng build --prod

# Replace the previous image with the new one
docker image rm vicsera/cygnus:telescope
docker image build -t vicsera/cygnus:telescope .

# Update the container to use the new image
docker container rm telescope
docker start --name telescope -d -p 81:80 vicsera/cygnus:telescope
docker image prune -f
