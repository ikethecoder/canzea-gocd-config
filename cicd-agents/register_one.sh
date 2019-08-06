#!/bin/bash

set -x -e

AGENT=$1

echo "---\n---\nBuilding and pushing $AGENT to registry"
cd $AGENT
docker build --tag ${AGENT}.local .
docker tag ${AGENT}.local $REGISTRY/agents/$AGENT:latest
docker push $REGISTRY/agents/$AGENT
cd ..
