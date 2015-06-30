docker-cfssl
============

This is a dockerized version of https://github.com/cloudflare/cfssl, based on golang 1.4.
This is a fork of [cbeer/cfssl](https://registry.hub.docker.com/u/cbeer/cfssl/) and [jcjones/docker-cfssl](https://github.com/jcjones/docker-cfssl)

## Usage:

```console
$ docker run  -p 8888:8888 tavisto/cfssl
$ docker run -v /path/to/my/cfssl-data:/etc/cfssl -p 8888:8888 tavisto/cfssl 
```

## Using the included compose file to run the server
```console
$ docker-compose up
```
