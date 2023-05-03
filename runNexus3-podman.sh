#!/bin/bash

export NEXUS_PORT=8081
export NEXUS_REGISTRY_PORT=5000



podman run -d -u root \
--privileged \
--detach \
--restart always \
--name nexus3 \
-p $NEXUS_PORT:8081 \
-p $NEXUS_REGISTRY_PORT:$NEXUS_REGISTRY_PORT \
 -v /home/analistas/Projects/nexus-data:/nexus-data \
  sonatype/nexus3
