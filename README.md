
# Arcabox

Arcabox is a tool to manage Arch Linux Containers easily

It is very small and is written in bash

## Installation
### Dependencies
- tar (For extracting the tarball)
- curl (For downloading the tarball)
Arcabox only works in **x86_64** Linux-based Computers
### Installation Proccess
- Clone the Repository, and run
```bash
# ./install.sh install
```
- You can nest Arcabox as much as you may
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

