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
  googletest \
  python3-pip

ENV HDF5_PLUGIN_PATH /usr/local/hdf5/lib/plugin

ADD installation_script.sh .
RUN chmod 777 installation_script.sh && ./installation_script.sh

ENTRYPOINT jupyter lab --ip=0.0.0.0 --allow-root --port=8888
