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
    mkdir -p "/usr/share/arcabox/"
    echo -e "${BOLD}${GREEN}=> ${RESET}${BOLD}Done!${RESET}"

elif [ "$1" = "check" ]; then
    check 'zstd'
    check 'curl'
    check 'tar'
else
    echo -e "${RED}${BOLD}=> ${RESET}${BOLD}Usage: ${UNDERLINE}install.sh${RESET} ${BOLD}<install|check>${RESET}"
    exit 1
fi