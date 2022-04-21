#!/usr/bin/env bash

if test -f ./influxdb.env ; then
  . ./influxdb.env
else 
  echo "./influxdb.env is missing" 
  exit 1
fi

docker-compose exec influxdb \
  influx setup --username ${INFLUXDB_USERNAME} \
  --password ${INFLUXDB_PASSWORD} \
  --token ${INFLUXDB_TOKEN} \
  --org ${INFLUXDB_ORG} \
  --bucket ${INFLUXDB_BUCKET} \
  --retention ${INFLUXDB_RETENTION} \
  --force
