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
    libomniorb4-dev \
    libprotobuf-dev \
    && apt-get clean

RUN cd /home && \
    git clone https://github.com/UFRBots/UFRBots-Team2021.git
    
RUN cd /home && \
    cd UFRBots-Team2021 && \
    mkdir build && \
    cd build && \
    sudo qmake ..
    
RUN cd /home && \
    cd UFRBots-Team2021 && \
    cd build && \
    make

COPY ufrbots.sh /home/

WORKDIR /home
