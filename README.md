apt-proxy-setup
===============

APT proxy setup is a method of automatically configuring APT proxy depending on
network location. It can be used to have access to fast / local mirror at home
or at the office but default to the public archive while on the road.

Usage
=====

Currently apt-proxy-setup can only track one network location, the one where
you have access to a local apt proxy (such as apt-cacher-ng). To identify that
location apt-proxy-setup probes a configured URL each time your network
connection changes. For the setup to work you need to add a small text file
somewhere in your local network. It can be an existing file or a new, dedicated
file, just for apt-proxy-setup. Keep in mind that apt-proxy-setup will try to
download that file so make sure that the URL is not reachable from the public
network. When the network location is determined a pre-configured APT proxy
will be set in /etc/apt/apt.conf.d/00apt-proxy-setup. That's it.

Configuration
=============

Start with the example configuration file, apt-proxy-setup.example, tweak it to
your liking and copy it to /etc/default/apt-proxy-setup. That's it, you're
done. Whenever you change that configuration (or remove it) apt-proxy-setup
will update the proxy configuration automatically.

Installation
============

Installation requires you to copy two upstart jobs to /etc/init, this is
facilitated by the embedded makefile.

$ sudo make install

