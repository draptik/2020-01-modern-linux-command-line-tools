#!/bin/sh
CONTAINER="cli-tools-demo-ubuntu:1.1"

LOCAL_CONFIGS=${PWD}"/../share"

docker run \
    --rm \
    --name cli-demos \
    -v ${LOCAL_CONFIGS}:/home/homer/share \
    -it ${CONTAINER} /bin/bash
