#!/usr/bin/env bash

if [[ -z "$1" ]] || [[ -z "$2" ]]; then
    echo 'Usage update-service.sh IMAGE SERVICE'
    exit
fi

docker service update --force --image $1 $2
