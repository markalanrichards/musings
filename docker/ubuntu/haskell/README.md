Setting up a Haskell Development Environment in Docker 
======================================================

Base image
----------
You must tag this docker build as haskellbase

This container is the base for running any haskell programs, potentially for production if you are brave enough.

Dev Image
---------
You must tag this docker build as haskelldev

This container setups a development environment complete with emacs, haskell mode, screen and hlint.

Get started
-----------
I like to copy the haskelldev file to ~/bin

Then just run haskelldev and it starts a bash session within Linux's screen program.
After that, cd into /src to find the code and develop away. When you shutdown the container (exit screen) all the builds installed locally are gone and the environment is fresh for the next day.

Make a local director like /var/haskell/sourceode

If necessary use bindfs if you don't want to write everything as root. An fstab entry like:
/home/mark/haskellcode /var/sourcecode/haskell fuse.bindfs create-for-user=mark,create-for-group=mark 0 0

N.B.
----
The complex RUN scripts, include "source /etc/profile"  because I actually use a slightly longer base Dockerfile at work that copies proxy config to the container's profile.

If I don't include this, then environment variables, like HTTP_PROXY don't get included and cabal and apt-get fail to resolve their packages.
