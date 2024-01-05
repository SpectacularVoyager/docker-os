# README
This project is a small starter pack for running a linux os from an docker image
The data is persisted using docker volumes and the OS hard drive can be altered by editing Volume/ folder

## STEPS
### INIT
```bash
    ./init.sh archlinux:latest
```
> use any docker image and make sure init.sh has execute permissions

### RUNNING
```bash
    make run
```
