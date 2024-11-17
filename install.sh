#!/bin/bash
# Simple Install Script for Arcabox
if [ "$UID" = "0" ]; then
	echo
else
	echo "=> Please run as root"
	exit 1
fi
if [ "$1" = "uninstall" ]; then
	rm -rf /usr/share/arcabox
	rm -rf /usr/local/bin/arcabox
	exit 1
elif [ "$1" = "install" ]; then
	
	cp arcabox /usr/local/bin
	mkdir -p /usr/share/arcabox
	exit 1
else
	echo "Usage: install.sh <install|uninstall>"
fi

