FROM python:3.7-stretch
MAINTAINER Mateusz Susik

WORKDIR /srv

EXPOSE 8888

RUN apt-get update && apt-get install -y  \
  build-essential \
  git \
  wget \
  libhdf5-dev \
  libtiff5-dev \
  libblosc-dev \
  googletest

RUN wget https://cmake.org/files/v3.14/cmake-3.14.4-Linux-x86_64.sh -O /cmake-3.14.4-Linux-x86_64.sh --quiet
RUN mkdir /opt/cmake
RUN sh /cmake-3.14.4-Linux-x86_64.sh --prefix=/opt/cmake --skip-license
RUN ln -s /opt/cmake/bin/cmake /usr/local/bin/cmake

RUN pip install --upgrade wheel
RUN pip install cmake_setuptools jupyterlab

ADD installation_script.sh .

ENTRYPOINT "./installation_script.sh"
