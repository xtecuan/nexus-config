#!/bin/bash

export NEXUS_PORT=8081
export NEXUS_HTTPS=8443
export NEXUS_REGISTRY_PORT=5000
export CONTAINER_NAME=nexus3-promerica
export CONTAINER_IMAGE=quay.io/xtecuan/nexus3-promerica-dev:latest
export CONTAINER_DATA_PATH=/data/nexus-data
export CONTAINER_BLOBS_PATH=/data/nexus-blobs


podman run -d \
--restart unless-stopped \
--name $CONTAINER_NAME \
-p $NEXUS_PORT:8081 \
-p $NEXUS_HTTPS:8443 \
-p $NEXUS_REGISTRY_PORT:$NEXUS_REGISTRY_PORT \
 -v $CONTAINER_DATA_PATH:/nexus-data \
 -v $CONTAINER_BLOBS_PATH:$CONTAINER_BLOBS_PATH \
 $CONTAINER_IMAGE
