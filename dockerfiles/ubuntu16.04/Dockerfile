FROM ubuntu:16.04
MAINTAINER Nick Cronquist "https://github.com/ncronquist"

# Cononical no longer includes sudo as part of their minimal set of packages
# for cloud images; Since this image will be used to run tests as if it's a
# a normal desktop computer; this will add sudo
RUN apt-get update && apt-get install -y sudo && rm -rf /var/lib/apt/lists/*

# Remove the need to provide a sudo password for all users
# This will allow us to make sure sudo commands still work, but to not actually
# require a password be entered while running automated tests
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' > /etc/sudoers.d/nopasswd

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
