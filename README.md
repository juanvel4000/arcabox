
# Arcabox
 ```
   /\__
   / ^\| 
  /____|
  |____|
```
Arcabox is a tool to manage small Arch Linux Containers in a minimal set of dependencies.
It is designed to be small and run in any Linux-based x86_64 device.

Arcabox prepares a ready-to use Arch Linux environment isolated from the rest of your computer.
## Features
- **Small and lightweight**, it weights less than a Megabyte
- **Minimal set of dependencies**, it only requires **curl** and **tar** with *zstd* and *xz* support
- **Updated**, it downloads the latest Arch Linux bootstrap tarball, and updates it during creation
- **Quick**, the Bootstrap tarball is minimal, you can get an Arch Linux container in less than 5 minutes (depending on your computer)
## Installation guide
Installing Arcabox is simple and quick, you only need to clone this repository with
`git clone https://github.com/juanvel4000/arcabox.git`, then you can run `./install.sh install` as root.
or you can run
```bash
git clone https://github.com/juanvel4000/arcabox.git && cd arcabox && sudo ./install.sh install
```
