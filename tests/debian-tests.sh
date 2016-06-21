#!/usr/bin/env bash

# Run the debian install script and eventually add the tests to run afterwards
# here

. /home/ubuntu/linux-devstart/debian

test_something() {
    let local timeout_period=10
    let local start=$SECONDS
    let local timeout=$start+$timeout_period

    printf "2-second timer: "
    until [ $SECONDS -gt $timeout ]
    do
        printf "."
        sleep 2
    done

    echo ""
}

test_something

sudo whoami
