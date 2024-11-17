
# Arcabox

Arcabox is a tool to manage Arch Linux Containers easily

It is very small and is written in bash




## Installation
**Arch Linux**
- The dependencies come with the System
- Download the PKGBUILD from the Releases Page, and install it with ```makepkg -si```
---
**Debian**
- You may need curl: ```apt-get update && apt-get install curl```
- Grab the Package from the Releases Page, and install it with ```dpkg -i```
---
**Others**
- Clone the Repository, and run
```bash
# ./install.sh install
```
## Features

- Only requires: curl and tar
- Easy to use
- Written in bash
- Very Small
## Usage
#### Create a container
```bash
# arcabox create mycontainer
```
#### Run a command on the container
```bash
# arcabox run mycontainer "exec /usr/bin/bash"
```
#### Delete a container
```bash
# arcabox delete mycontainer
```
#### Open a shell in the container
```bash
# arcabox open mycontainer
```

