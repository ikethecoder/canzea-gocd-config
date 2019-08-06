
# Introduction

The CI/CD Agents are build and deploy containers for different stacks and deployment patterns.

## Installation Example

```
export REGISTRY=registry.ops.184768.xyz
echo $DOCKER_PASSWORD | docker $REGISTRY login --username $DOCKER_USERNAME --password-stdin
./register.sh
```

export REGISTRY=registry.ops.185233.xyz
