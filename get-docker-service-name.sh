#!/usr/bin/env bash

SERVICE_INFO=`docker service ps ${1} --no-trunc | head -2 | tail -1`
SERVICE_NAME_PREFIX=`echo ${SERVICE_INFO} | cut -d' ' -f2`
SERVICE_NAME_SUFFIX=`echo ${SERVICE_INFO} | cut -d' ' -f1`

if [ ! $SERVICE_NAME_SUFFIX = "" ]; then
    SERVICE_NAME_SUFFIX=.${SERVICE_NAME_SUFFIX}
fi

echo ${SERVICE_NAME_PREFIX}${SERVICE_NAME_SUFFIX}
