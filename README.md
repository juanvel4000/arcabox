
# Arcabox

Arcabox is a tool to manage Arch Linux Containers easily

It is very small and is written in bash




## Installation

Clone this repository

```bash
    git clone https//github.com/juanvel4000/arcabox
```
To install the program, run this command
```bash
mv arcabox/arcabox /usr/local/bin/
```
You can uninstall it by removing ```/usr/local/bin/arcabox```

**or just run the install.sh**
### For Arch Linux Users
You can either, grab the PKGBUILD or set the Repository.
The PKGBUILD is more updated than the repository

- 1. Add the Arcabox Repository (arcarepo) to your /etc/pacman.conf
```bash
[arcarepo]
SigLevel = Optional TrustAll
Server = https://juanvel4000.serv00.net/arcabox/repo/x86_64
```
- 2. Grab the PKGBUILD

Download [PKGBUILD](http://juanvel4000.serv00.net/arcabox/PKGBUILD), And run makepkg -si
You cant use an AUR Helper, because its not the AUR
## Features

- Only requires: curl and tar
- Easy to use
- Written in bash
- Very Small


