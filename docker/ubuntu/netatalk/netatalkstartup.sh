#!/bin/bash
dbus-daemon --system
/etc/init.d/avahi-daemon start
/etc/init.d/netatalk start

