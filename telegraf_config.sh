#!/usr/bin/env bash

telegraf_ping_url=""
count=0

for x in $@ ; do
  ((count=count+1))
  if [ ${count} -eq $# ] ; then
    url=\"${x}\"
  else
    url=\"${x}\",
  fi
  telegraf_ping_url="${telegraf_ping_url} ${url}"
done

echo ${telegraf_ping_url}

cp -v ./config/telegraf/telegraf.conf.dist ./config/telegraf/telegraf.conf

sed -i "s/__TBD__/${telegraf_ping_url}/g" ./config/telegraf/telegraf.conf 
