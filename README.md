apt-proxy-setup
===============

Configure /etc/apt/apt.conf.d/00-apt-proxy-setup.conf automatically
depending on the network you are in. This is a handy solution for a
user roaming between networks where one of the networks has an
apt-cacher-ng instance running and the user wants to take advantage of
that automatically.

Usage
=====

$ sudo cp apt-proxy-setup.conf /etc/init
$ sudo cp apt-proxy-setup.example /etc/default/apt-proxy-setup
$ sudo sensible-editor /etc/default/apt-proxy-setup

