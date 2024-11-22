#!/bin/bash
# Simple Install Script for Arcabox


RED='\033[0;31m'
GREEN='\033[0;32m'
RESET='\033[0m'  
BOLD='\033[1m'   
if [ "$UID" = "0" ]; then
	echo -e "${BOLD}${GREEN}=> ${RESET}${BOLD}Runnning as root${RESET}"
else
	echo -e "${BOLD}${RED}=> ${RESET}${BOLD}Please run as root${RESET}"
	exit 1
fi
if [ "$1" = "uninstall" ]; then
	echo -e "${BOLD}${GREEN}=> ${RESET}${BOLD}Removing Arcabox Directories${RESET}"
	rm -rf /usr/share/arcabox
	echo -e "${BOLD}${GREEN}=> ${RESET}${BOLD}Removing the Arcabox script${RESET}"
	rm -rf /usr/local/bin/arcabox
	echo -e "${BOLD}${GREEN}=> ${RESET}${BOLD} Done.${RESET}"
	exit 1
elif [ "$1" = "install" ]; then
	echo -e "${BOLD}${GREEN}=> ${RESET}${BOLD}Installing Arcabox to /usr/local/bin${RESET}"
	cp arcabox /usr/local/bin
	echo -e "${BOLD}${GREEN}=> ${RESET}${BOLD}Creating a Arcabox directory${RESET}"
	mkdir -p /usr/share/arcabox
	exit 1
else
	echo -e "${BOLD}${RED}=> ${RESET}${BOLD} Usage: install.sh <install|uninstall>${RESET}"
fi

