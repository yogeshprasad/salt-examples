FROM ubuntu:14.04.5

RUN apt-get -y update && apt-get install -y software-properties-common && apt-get install -y python-software-properties

RUN add-apt-repository ppa:saltstack/salt -y
RUN apt-get -y update
RUN apt-get -y install wget

RUN apt-get install -y salt-master && apt-get install -y salt-ssh && apt-get install -y salt-cloud && apt-get install -y salt-doc

RUN apt-get install -y salt-api

RUN wget https://bootstrap.pypa.io/get-pip.py
RUN python get-pip.py

RUN pip install --upgrade six
RUN apt-get install build-essential -y
RUN apt-get install libssl-dev -y
RUN apt-get install libffi-dev -y
RUN apt-get install python-dev -y

RUN pip install --upgrade pyopenssl

RUN mkdir -p /tmp/salt
RUN mkdir -p /etc/salt

COPY configure_salt.sh /tmp/salt/
COPY master /etc/salt/

ENTRYPOINT . /tmp/salt/configure_salt.sh && bash

