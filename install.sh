#!/bin/bash
set -e
RED='\033[0;31m'
GREEN='\033[0;32m'
RESET='\033[0m'  
BOLD='\033[1m'   

if [ "$UID" -ne 0 ] && [ -z "$DESTDIR" ]; then
    echo -e "${BOLD}${RED}=> ${RESET}${BOLD}Please run as root${RESET}"
    exit 1
fi

if [ "$1" = "uninstall" ]; then
    echo -e "${BOLD}${GREEN}=> ${RESET}${BOLD}Removing Arcabox...${RESET}"
    rm -rf /usr/share/arcabox
    rm -rf /usr/local/bin/arcabox
    echo -e "${BOLD}${GREEN}=> ${RESET}${BOLD}Done.${RESET}"
    exit 0
fi

if [ "$1" = "install" ]; then
    if command -v curl >/dev/null 2>&1; then
        echo -e "${BOLD}${GREEN}=>${RESET}${BOLD} Found cURL${RESET}"
    else
        echo -e "${BOLD}${RED}=>${RESET}${BOLD} Please install cURL to continue ${RESET}"
        exit 1
    fi

    if command -v tar >/dev/null 2>&1; then
        echo -e "${BOLD}${GREEN}=>${RESET}${BOLD} Found tar${RESET}"
    else
        echo -e "${BOLD}${RED}=>${RESET}${BOLD} Please install tar to continue ${RESET}"
        exit 1
    fi

    INSTALL_DIR="${DESTDIR:-/usr/local/bin}"
    echo -e "${BOLD}${GREEN}=> ${RESET}${BOLD}Installing Arcabox to $INSTALL_DIR${RESET}"
    cp arcabox "$INSTALL_DIR"

    INSTALL_SHARE_DIR="${DESTDIR:-/usr/share}/arcabox"
    mkdir -p "$INSTALL_SHARE_DIR"

    echo -e "${BOLD}${GREEN}=> ${RESET}${BOLD}Done!${RESET}"
    exit 0
fi

echo -e "${BOLD}${RED}=> ${RESET}${BOLD} Usage: install.sh <install|uninstall>${RESET}"
exit 1

