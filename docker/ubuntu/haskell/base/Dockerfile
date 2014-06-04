FROM ubuntubase

RUN ["mkdir", "-p", "/root/.cabal/bin"]
ENV PATH /root/.cabal/bin:$PATH

RUN ["/bin/bash", "-c", "apt-get install haskell-platform -y"]

RUN ["/bin/bash", "-c", "source /etc/profile && cabal update"]
RUN ["/bin/bash", "-c", "source /etc/profile && cabal update && cabal install cabal cabal-install"]
RUN ["/bin/bash", "-c", "source /etc/profile && cabal update"]

