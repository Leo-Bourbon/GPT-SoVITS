#!/bin/env bash

docker run --rm -it -p 9871:9871/tcp -p 9872:9872/tcp -p 9873:9873/tcp -p 9874:9874/tcp -p 9880:9880/tcp --device=/dev/kfd --device=/dev/dri --group-add=video --ipc=host --cap-add=SYS_PTRACE --security-opt seccomp=unconfined --shm-size 8G gpt-sovits:latest 