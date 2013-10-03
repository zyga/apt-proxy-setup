install:
	install -m 644 apt-proxy-setup.conf /etc/init/
	install -m 644 upstart-dbus-bridge.conf /etc/init/
check:
	init-checkconf apt-proxy-setup.conf
	init-checkconf upstart-dbus-bridge.conf
