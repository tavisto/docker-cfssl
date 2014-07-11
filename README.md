docker-cfssl
============

This is a dockerized version of https://github.com/cloudflare/cfssl.


```console
$ docker run -v /path/to/my/cfssl-data:/etc/cfssl -p 8888:8888 cbeer/cfssl
```
A self-signed root CA is provided out-of-the-box for demonstration purposes. To provide your own configuration, you can mount a volume containing, e.g.:


* `ca.pem`
* `ca_key.pem`

```console
$ docker run -v /path/to/my/cfssl-data:/etc/cfssl -p 8888:8888 cbeer/cfssl
```
