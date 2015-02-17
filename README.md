docker-cfssl
============

This is a dockerized version of https://github.com/cloudflare/cfssl, based on golang-head. This is a fork of [cbeer/cfssl](https://registry.hub.docker.com/u/cbeer/cfssl/).

## Usage:

```console
$ docker run  -p 8888:8888 quay.io/jcjones/cfssl
$ docker run -v /path/to/my/cfssl-data:/etc/cfssl -p 8888:8888 quay.io/jcjones/cfssl
```
