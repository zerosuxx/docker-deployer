#!/usr/bin/env bash

if [[ -n ${RUN_AS} ]]; then
    RUN_AS_ARG="--user ${RUN_AS}"
fi

if [[ -z ${EXEC_ARG} ]]; then
    EXEC_ARG="-it"
fi

if [[ -z ${SERVICE} ]]; then
    echo 'usage: SERVICE=[SERVICE_NAME] exec-cmd-in-docker.sh'
    exit
else
    SERVICE_NAME=`get-docker-service-name ${SERVICE}`
fi

docker exec ${RUN_AS_ARG} ${EXEC_ARG} ${SERVICE_NAME} "$@"
