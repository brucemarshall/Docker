#!/bin/bash

#Maintainer: bruce@boxscale.io

#Stop all running containers
docker stop $(docker ps -a -q)

#Kill all running containers (for those that don't stop normally)
docker kill $(docker ps -q)

#Remove all running containers
docker rm $(docker ps -a -q)

#Delete all images
docker rmi $(docker images -q)
