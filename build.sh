#!/bin/bash
export CENV="dev"
export TAG="quay.io/xtecuan/nexus3-promerica-${CENV}"

docker build -t ${TAG} .