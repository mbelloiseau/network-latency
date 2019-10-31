# network-latency
Track network latency with Telegraf, InfluxDB and Grafana

## Usage

```
$ git clone git@github.com:mbelloiseau/network-latency.git
$ cd network-latency
$ docker-compose up -d
$ docker-compose logs
```

## Tips

* Check if telegraf agent is sending data to influxdb

```
$ docker-compose exec influxdb influx -database 'network_latency'
[...]
> select url,average_response_ms from ping limit 2 ;
name: ping
time                url         average_response_ms
----                ---         -------------------
1572377472000000000 grafana.com 6.261
1572377482000000000 grafana.com 6.335
```

* Ensure that influxdb is up and running

```
$ curl -sL -I http://influxdb:8086/ping
# or
$ curl -sL -I http://localhost:8086/ping

```

## Resources

* https://github.com/influxdata/telegraf/tree/master/plugins/inputs/ping
* https://docs.influxdata.com/influxdb/v1.7/tools/api/#ping-http-endpoint
* https://grafana.com/docs/administration/provisioning/
