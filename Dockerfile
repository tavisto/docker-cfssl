# Based on cbeer/docker-cfssl
FROM quay.io/jcjones/golang:20150217

MAINTAINER J.C. Jones "jjones@mozilla.com"

VOLUME [ "/etc/cfssl" ]
WORKDIR /etc/cfssl

RUN go get -u github.com/cloudflare/cfssl/cmd/...

ENTRYPOINT [ "cfssl" ]
