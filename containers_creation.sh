#!/usr/bin/env bash
docker run -di \
  --name=my-container-rw \
  -v /home/ec2-user/ubuntu:/mnt \
  busybox
docker run -di \
  --name=my-container-ro \
  -v /home/ec2-user/ubuntu:/mnt:ro \
  busybox
  
docker exec -i my-container-rw echo "This container has read and write permissions"
docker exec -i my-container-ro echo "This container has only read permissions"
