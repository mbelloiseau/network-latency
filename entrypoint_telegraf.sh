#!/bin/bash
set -e

while [ `curl -sL -I "influxdb:8086/ping" | grep '^HTTP/1.1 204' | wc -l` -ne 1 ] ; do
    sleep 2
done

if [ "${1:0:1}" = '-' ]; then
    set -- telegraf "$@"
fi

exec "$@"
