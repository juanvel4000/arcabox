#!/bin/bash
# Simple Install Script for Arcabox

set -e
RED='\033[0;31m'
GREEN='\033[0;32m'
RESET='\033[0m'  
BOLD='\033[1m'   


if [ "$UID" -ne 0 ]; then
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
if command -v curl >/dev/null 2>&1; then
    echo -e "${BOLD}${GREEN}=>${RESET}${BOLD} Found cURL${RESET}"
else
    echo -e "${BOLD}${RED}=>${RESET}${BOLD} Please install cURL to continue ${RESET}"
	exit
fi
if command -v tar >/dev/null 2>&1; then
    echo -e "${BOLD}${GREEN}=>${RESET}${BOLD} Found tar${RESET}"
else
    echo -e "${BOLD}${RED}=>${RESET}${BOLD} Please install tar to continue ${RESET}"
	exit
fi
	echo -e "${BOLD}${GREEN}=> ${RESET}${BOLD}Installing Arcabox to /usr/local/bin${RESET}"
	cp arcabox /usr/local/bin
	echo -e "${BOLD}${GREEN}=> ${RESET}${BOLD}Creating a Arcabox directory${RESET}"
	mkdir -p /usr/share/arcabox
	echo -e "${BOLD}${GREEN}=> ${RESET}${BOLD}Done!${RESET}"

else
	echo -e "${BOLD}${RED}=> ${RESET}${BOLD} Usage: install.sh <install|uninstall>${RESET}"
fi

