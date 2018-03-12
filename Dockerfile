FROM debian:latest
MAINTAINER Mateusz Susik

WORKDIR /srv

RUN apt-get update && apt-get install -y  \
  build-essential \
  git \
  wget \
  libhdf5-dev \
  libtiff5-dev \
  libblosc-dev \
  googletest

ADD installation_script.sh .
RUN chmod 777 installation_script.sh && ./installation_script.sh

ENTRYPOINT bash
