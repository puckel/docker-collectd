## Collectd Dockerfile


This repository contains **Dockerfile** of [Collectd](http://collectd.org/) for [Docker](https://www.docker.com/)'s [automated build](https://registry.hub.docker.com/u/puckel/collectd/) published to the public [Docker Hub Registry](https://registry.hub.docker.com/).


### Base Docker Image

* [puckel/debian-stable](https://registry.hub.docker.com/u/puckel/debian-stable/)


### Installation

1. Install [Docker](https://www.docker.com/).

2. Download [automated build](https://registry.hub.docker.com/u/puckel/collectd/) from public [Docker Hub Registry](https://registry.hub.docker.com/): `docker pull puckel/collectd`

   (alternatively, you can build an image from [Dockerfile](https://github.com/puckel/dockerfiles/))


### Usage

In addition with puckel/graphite, a basic collectd-based server monitoring. Sends stats to a container named "graphite". You can specify your collectd hostname with "-e HOST_NAME=YOURHOSTNAME" otherwise "Hostname" in collectd.conf will be the container name :

```bash
    docker run -d \
        --link graphite:graphite \
        --name collectd-HOSTNAME \ 
        -e HOST_NAME=YOURHOSTNAME
        puckel/collectd
```
