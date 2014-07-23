FROM webbase
RUN ["/bin/bash", "-c", "source /etc/profile && apt-get install screen emacs emacs-goodies-* git git-extras nodejs nodejs-legacy npm python -y"]
RUN ["/bin/bash", "-c", "source /etc/profile && npm install -g bower"]
ADD .emacs /root/.emacs

