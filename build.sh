#!/bin/bash

###
# Rebuilds the image into the 'latest' tag
###

# Docker hub username
USERNAME=znibb
# Image name
IMAGE=ddclient
# Latest version pushed to Docker hub
LATEST_VERSION=4

docker build --no-cache -t $USERNAME/$IMAGE:latest .
