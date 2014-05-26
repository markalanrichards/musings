FROM ubuntu:trusty

ENV HOME /root
RUN ["mkdir", "-p", "/root/.cabal/bin"]
RUN ["mkdir", "-p", "/root/bin"]
ENV PATH /root/bin:/root/.cabal/bin:$PATH

ENV DEBIAN_FRONTEND noninteractive
ENV LANG en_GB.UTF-8
ENV LANGUAGE en_GB.UTF-8
ENV LC_ALL en_GB.UTF-8
RUN locale-gen en_GB.UTF-8
RUN dpkg-reconfigure locales
RUN update-locale LANG=en_GB.UTF-8

RUN ["/bin/bash", "-c", "apt-get update"]
RUN ["/bin/bash", "-c", "apt-get dist-upgrade -y"]
RUN ["/bin/bash", "-c", "apt-get install haskell-platform language-pack-en -y"]

RUN ["/bin/bash", "-c", "source /etc/profile && cabal update"]
RUN ["/bin/bash", "-c", "source /etc/profile && cabal update && cabal install cabal cabal-install"]

