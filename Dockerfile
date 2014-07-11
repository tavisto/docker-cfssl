#FROM google/golang
# Updated for go 1.3

FROM google/debian:wheezy

RUN apt-get update -y && apt-get install --no-install-recommends -y -q curl build-essential ca-certificates git mercurial bzr
RUN mkdir /goroot && curl https://storage.googleapis.com/golang/go1.3.linux-amd64.tar.gz | tar xvzf - -C /goroot --strip-components=1
RUN mkdir /gopath

ENV GOROOT /goroot
ENV GOPATH /gopath
ENV PATH $PATH:$GOROOT/bin:$GOPATH/bin

MAINTAINER chris@cbeer.info

RUN go get github.com/cloudflare/cfssl/...

EXPOSE 8888

WORKDIR  /etc/cfssl 

ADD demo-cfssl /etc/cfssl

RUN cfssl genkey -initca /etc/cfssl/ca.json | cfssljson ca
RUN ln -s /etc/cfssl/ca-key.pem /etc/cfssl/ca_key.pem

ENTRYPOINT ["cfssl"]
CMD ["serve", "-address=0.0.0.0", "-port=8888"]
