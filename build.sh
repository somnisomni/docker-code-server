#!/usr/bin/env bash

### [ somnisomni/docker-code-server ]
### Simple Dockerfile build script

IMAGE_TAG_NAME=somni-code-server

docker build --rm \
	--build-arg ARCH=$(dpkg --print-architecture) \
	--build-arg UID=$(id -u) \
	--build-arg GID=$(id -g) \
	--tag $IMAGE_TAG_NAME:latest \
	$(dirname $0)
