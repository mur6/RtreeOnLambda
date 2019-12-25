#!/bin/bash
set -ex

IMAGE_NAME=libspatialindex_rtree
docker build . -t $IMAGE_NAME
CONTAINER_ID=$(docker create $IMAGE_NAME ls)
docker container cp $CONTAINER_ID:/var/task/lib task/
docker container rm -f $CONTAINER_ID
