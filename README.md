# network-latency
Track network latency with Telegraf, InfluxDB and Grafana

## Usage

## Tips

* Check if telegraf agent is sending data to influxdb

```
$ docker exec -it <container_id> influx -database 'network_latency'
Connected to http://localhost:8086 version 1.7.6
InfluxDB shell version: 1.7.6
Enter an InfluxQL query
> select url,average_response_ms from ping limit 2 ;
name: ping
time                url         average_response_ms
----                ---         -------------------
1572377472000000000 grafana.com 6.261
1572377482000000000 grafana.com 6.335
```

## Resources
