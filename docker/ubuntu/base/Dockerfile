FROM ubuntu:trusty

ENV HOME /root
RUN ["mkdir", "-p", "/root/bin"]

ENV DEBIAN_FRONTEND noninteractive
ENV LANG en_GB.UTF-8
ENV LANGUAGE en_GB.UTF-8
ENV LC_ALL en_GB.UTF-8

RUN ["/bin/bash", "-c", "apt-get update"]
RUN ["/bin/bash", "-c", "apt-get install language-pack-en -y"]

RUN locale-gen en_GB.UTF-8
RUN dpkg-reconfigure locales
RUN update-locale LANG=en_GB.UTF-8

RUN ["/bin/bash", "-c", "apt-get dist-upgrade -y"]
RUN ["/bin/bash", "-c", "apt-get install screen -y"]

ADD startup.sh /startup.sh
ADD ubuntubasestartup.sh /ubuntubasestartup.sh
