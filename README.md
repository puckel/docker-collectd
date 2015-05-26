## Collectd Dockerfile


This repository contains **Dockerfile** of [Collectd](http://collectd.org/) for [Docker](https://www.docker.com/)'s [automated build](https://registry.hub.docker.com/u/puckel/docker-collectd/) published to the public [Docker Hub Registry](https://registry.hub.docker.com/).


### Base Docker Image

* [puckel/docker-base](https://registry.hub.docker.com/u/puckel/docker-base/)


### Installation

1. Install [Docker](https://www.docker.com/).

2. Download [automated build](https://registry.hub.docker.com/u/puckel/docker-collectd/) from public [Docker Hub Registry](https://registry.hub.docker.com/): `docker pull puckel/docker-collectd`

Alternatively, you can build an image from [Dockerfile](https://github.com/puckel/docker-collectd)

### Usage

In addition with puckel/docker-graphite or puckel/docker-influxdb, a basic collectd-based server monitoring. Sends stats to a container named "graphite", "influx" or both. You can specify your collectd hostname with "-e HOST_NAME=YOURHOSTNAME" otherwise "Hostname" in collectd.conf will be the container name :

With Graphite:
```bash
    docker run -d \
        --link graphite:graphite \
        --name collectd-HOSTNAME \
        -e HOST_NAME=YOURHOSTNAME
        puckel/docker-collectd
```

With InfluxDB:
```bash
    docker run -d \
        --link influxdb:influxdb \
        --name collectd-HOSTNAME \
        -e HOST_NAME=YOURHOSTNAME
        puckel/docker-collectd
```

Both:
```bash
    docker run -d \
        --link graphite:graphite \
        --link influxdb:influxdb \
        --name collectd-HOSTNAME \
        -e HOST_NAME=YOURHOSTNAME
        puckel/docker-collectd
```
