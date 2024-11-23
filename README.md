
# Arcabox
 ```
   /\__
   / ^\| 
  /____|
  |____|
```
Arcabox is a tool to manage Arch Linux Containers easily

It is very small and is written in Shell script

## Installation
### Dependencies
- **tar** (For extracting the tarball)
- **curl** (For downloading the tarball)
Arcabox only works in **x86_64** Linux-based Computers
### Installation Process
- Clone the Repository, and run (as root)
```bash
./install.sh install
```
## Features

- Very Small
- Only 2 Dependencies: tar, curl
- Works on any x86_64 machine


## Arcafile
An Arcafile is a shell-formatted script to define the creation of a temporal Arcabox container. Arcafiles can
- Contain a shell script to run on the container
- Install a list of packages
- Can be saved if necessary
**Example**
 ```bash
name="neofetch" # Container Name
scriptprogram="neofetch" # Shell Script to run in
packages=(neofetch) ## Packages to install 
keep=true # It will become a normal container after execution
  ```