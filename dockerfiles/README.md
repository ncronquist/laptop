Linux-DevStart Docker Build
===========================

This directory contains the build environment needed to build a Linux-DevStart
Docker image.

Instructions
-------------
Build the Docker images

    cd /{VERSION}
    ./build.sh

Before you can push the image to quay, you need to login.

    docker login
    docker push ncronquist/linux-devstart
