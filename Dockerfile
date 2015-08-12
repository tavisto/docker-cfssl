# Based on cbeer/docker-cfssl and jcjones/docker-cfssl
FROM golang:1.4

MAINTAINER Tavis Aitken "<tavisto@tavisto.net"

VOLUME [ "/etc/cfssl" ]
WORKDIR /etc/cfssl

RUN go get -tags nopkcs11 -u github.com/cloudflare/cfssl/cmd/...

ENTRYPOINT [ "cfssl" ]
