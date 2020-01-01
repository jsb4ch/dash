FROM debian:stretch
LABEL maintainer="Kash Developers <dev@kashcore.org>"
LABEL description="Dockerised KashCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
