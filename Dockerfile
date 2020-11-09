FROM ubuntu:20.04

# Dependencias
ENV TZ=America/Recife
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    git \
    qt5-default \
    sudo \
    protobuf-compiler \
    && apt-get clean

RUN cd /home && \
    git clone https://github.com/UFRBots/UFRBots-Team.git && \
    sleep 5 && \
    cd UFRBots-Team

COPY ufrbots.sh /home/

WORKDIR /home
