#!/bin/bash
wget -qO- https://get.docker.com/ | sh
rm -rf /var/lib/docker
mkdir -p /var/lib/docker/devicemapper/devicemapper
dd if=/dev/zero of=/var/lib/docker/devicemapper/devicemapper/data bs=1G count=0 seek=950
systemctl start docker
systemctl enable docker
