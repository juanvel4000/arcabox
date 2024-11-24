#!/bin/bash
set -e
RED='\033[0;31m' 
GREEN='\033[0;32m'
RESET='\033[0m'  
BOLD='\033[1m'   
UNDERLINE='\033[4m'
trap ' ' SIGINT
check() {
    if command -v "$1" &> /dev/null; then
        echo -e "${GREEN}${BOLD}=> ${RESET}${BOLD}Found $1${RESET}"
    else
        echo -e "${RED}${BOLD}=> ${RESET}${BOLD}Unable to find $1${RESET}"
        exit 1
            fi
}
if [ "$1" = "install" ]; then
if [ "$UID" = "0" ]; then
    echo -e "${GREEN}${BOLD}=> ${RESET}${BOLD}Running as root.${RESET}"
else
    echo -e "${RED}${BOLD}=> ${RESET}${BOLD}Please run as root.${RESET}"
    exit 1
fi
check "zstd"
check "tar"
check "curl"
    if [ -z "$2" ]; then
        DESTDIR="/usr/local/bin"
    else
        DESTDIR="$2"
    fi
    chmod +x arcabox
    mkdir -p "$DESTDIR"
    cp arcabox "$DESTDIR"/arcabox
    echo -e "${BOLD}${GREEN}=> ${RESET}${BOLD}Installing arcabox to $DESTDIR${RESET}"
    echo "DESTDIR=$DESTDIR" > /etc/arcabox.install.conf
    mkdir -p "/usr/share/arcabox/"
    echo -e "${BOLD}${GREEN}=> ${RESET}${BOLD}Done!${RESET}"
elif [ "$1" = "uninstall" ]; then
if [ "$UID" = "0" ]; then
    echo -e "${GREEN}${BOLD}=> ${RESET}${BOLD}Running as root.${RESET}"
else
    echo -e "${RED}${BOLD}=> ${RESET}${BOLD}Please run as root.${RESET}"
    exit 1
fi
    if [ -f "/etc/arcabox.install.conf" ]; then
        source /etc/arcabox.install.conf
        rm -rf "/etc/arcabox.install.conf"
        echo -e "${BOLD}${GREEN}=> ${RESET}${BOLD}Removing the arcabox executable in $DESTDIR${RESET}"
        rm -rf "$DESTDIR"
        if [ -d "/usr/share/arcabox" ]; then
            echo -e "${GREEN}${BOLD}=> ${RESET}${BOLD}Deleting /usr/share/arcabox${RESET}"
            rm -rf "/usr/share/arcabox/"
        fi
    else
        echo -e "${BOLD}${RED}=> ${RESET}${BOLD}Arcabox is not installed, or /etc/arcabox.install.conf doesnt exist${RESET}"
        exit 1
    fi
elif [ "$1" = "check" ]; then
    check 'zstd'
    check 'curl'
    check 'tar'
else
    echo -e "${RED}${BOLD}=> ${RESET}${BOLD}Usage: ${UNDERLINE}install.sh${RESET} ${BOLD}<install|uninstall>${RESET}"
    exit 1
fi