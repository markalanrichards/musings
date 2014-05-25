FROM haskellbase
RUN ["/bin/bash", "-c", "source /etc/profile && apt-get install screen emacs emacs-goodies-* haskell-platform-doc haskell-platform-prof haskell-mode git git-extras build-essential -y"]
RUN ["/bin/bash", "-c", "source /etc/profile && cabal install stylish-haskell hlint"]
ADD haskell-setup.el /root/.emacs.d/haskell-setup.el
ADD .emacs /root/.emacs
 
