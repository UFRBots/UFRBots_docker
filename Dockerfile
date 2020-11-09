FROM ubuntu:18.04

# Dependencias
RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    git \
    qt5-default \
    sudo \
    protobuf-compiler \
    && apt-get clean

RUN cd /home && \
    git clone https://github.com/UFRBots/UFRBots-Team.git