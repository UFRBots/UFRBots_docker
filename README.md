# UFRBots_docker

## Installation

See [this](https://docs.docker.com/engine/install/ubuntu/#installation-methods) link to install docker on your computer and clone this repository.

## Running
First, build the docker

```
sudo sh dockerbuild.sh
```

After this, run it

```
sudo sh rundocker.sh
```

Now, run the `ufrbots.sh` to run all softwares

```
# sudo sh ufrbots.sh color multicast_ip command_ip command_port vision_port referee_port replacer_port
sudo sh ufrbots.sh BLUE 224.5.23.2 127.0.0.1 20011 10002 10003 10004
```
