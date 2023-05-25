#!/bin/bash

docker run \
    -t \
    --gpus all \
    --name test \
    --rm \
    -i \
    kungfu.azurecr.io/mw-deepspeed-baseline:latest \
    /bin/bash
