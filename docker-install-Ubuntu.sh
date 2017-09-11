#!/bin/bash
#Maintainer bruce@boxscale.io
#Install Docker latest version | Increase default volume size
wget -qO- https://get.docker.com/ | sh
service docker stop
rm -rf /var/lib/docker
mkdir -p /var/lib/docker/devicemapper/devicemapper
dd if=/dev/zero of=/var/lib/docker/devicemapper/devicemapper/data bs=1G count=0 seek=950
service docker start
