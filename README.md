# README
This project is a small starter pack for running a linux os from an docker image
The data is persisted using docker volumes and the OS hard drive can be altered by editing Volume/ folder

## STEPS
### DOCKER IMAGE
Install an image of your linux based os
```bash
    docker pull archlinux:latest
```

### INIT
```bash
    ./init.sh archlinux:latest
```
> use any docker image and make sure init.sh has execute permissions.
----
> To use an OS other than arch linux,change the line in Makefile to your os-image
```Makefile
    IMAGE=archlinux:latest
```

### RUNNING
```bash
    make run
```
![Screenshot from 2024-01-05 20-57-10](https://github.com/SpectacularVoyager/docker-os/assets/128292218/36e22c90-8d9a-462e-89c5-18d673fa0b62)
