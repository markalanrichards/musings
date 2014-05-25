FROM ubuntu:trusty
ENV HOME /root
RUN ["/bin/bash", "-c", "apt-get update"]
RUN ["/bin/bash", "-c", "apt-get dist-upgrade -y"]
RUN ["/bin/bash", "-c", "apt-get install haskell-platform -y"]
RUN ["mkdir", "-p", "/root/.cabal/bin"]
RUN ["mkdir", "-p", "/root/bin"]
ENV PATH /root/bin:/root/.cabal/bin:$PATH
RUN ["/bin/bash", "-c", "source /etc/profile && cabal update"]

