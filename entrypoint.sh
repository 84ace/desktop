#!/bin/bash

# create a dbus system daemon
dbus-daemon --system

# create the sock dir properly
/bin/sh /usr/share/xrdp/socksetup

# run xrdp and xrdp-sesman in the foreground so the logs show in docker
xrdp-sesman -ns &
xrdp -ns
