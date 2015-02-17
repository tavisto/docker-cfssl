# Based on cbeer/docker-cfssl
FROM quay.io/jcjones/golang:20150217

MAINTAINER J.C. Jones "jjones@mozilla.com"

RUN go get github.com/cloudflare/cfssl/...

EXPOSE 8888

VOLUME [ "/etc/cfssl" ]
WORKDIR /etc/cfssl

ENTRYPOINT [ "cfssl" ]
