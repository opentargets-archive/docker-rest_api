# base image without rest api code to be used in wercker
FROM ubuntu:xenial
MAINTAINER ops @opentargets <ops@opentargets.org>

# Install required packages
RUN apt-get update && \
    apt-get install -y --no-install-recommends python-software-properties \
    build-essential \
    supervisor \
    python-dev \
    python \
    wget \
    curl \
    ca-certificates \
    openssh-server \
    git \
    sqlite3 \
    nginx-extras \
    && rm -rf /var/lib/apt/lists/*

RUN wget --no-check-certificate https://bootstrap.pypa.io/get-pip.py && \
  python get-pip.py

