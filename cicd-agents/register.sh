#!/bin/bash

set -x -e

for agent in $(ls -d */)
do
    AGENT=${agent%%/}

    echo "---\n---\nBuilding and pushing $AGENT to registry"
    cd $AGENT
    docker build --tag ${AGENT}.local .
    docker tag ${AGENT}.local $REGISTRY/agents/$AGENT:latest
    docker push $REGISTRY/agents/$AGENT
    cd ..
done
