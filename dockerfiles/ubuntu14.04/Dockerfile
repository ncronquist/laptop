FROM ubuntu:14.04
MAINTAINER Nick Cronquist "https://github.com/ncronquist"

RUN useradd -s /bin/bash -m ubuntu
RUN echo ubuntu:ubuntu | chpasswd
RUN gpasswd -a ubuntu sudo

RUN apt-get update
RUN apt-get dist-upgrade -y

RUN DEBIAN_FRONTEND=noninteractive apt-get -y dist-upgrade
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install python-software-properties
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install software-properties-common

WORKDIR /home/ubuntu

USER ubuntu

CMD [ "bash" ]
