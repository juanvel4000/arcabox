#!/bin/bash
# Simple Install Script for Arcabox
if [ "$UID" = "0" ]; then
	echo
else
	echo "=> Please run as root"
	exit 1
fi
if [ "$1" = "uninstall" ]; then
	echo "Removing Arcabox Directories"
	rm -rf /usr/share/arcabox
	echo "Removing the Arcabox script"
	rm -rf /usr/local/bin/arcabox
	echo "Done."
	exit 1
elif [ "$1" = "install" ]; then
	echo "Installing Arcabox to /usr/local/bin"
	cp arcabox /usr/local/bin
	echo "Creating a Arcabox directory"
	mkdir -p /usr/share/arcabox
	exit 1
else
	echo "Usage: install.sh <install|uninstall>"
fi

