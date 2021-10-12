FROM ubuntu:20.04

# Dependencias
ENV TZ=America/Recife
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    git \
    qt5-default \
    protobuf-compiler \
    libomniorb4-dev \
    libprotobuf-dev \
    && apt-get clean

RUN cd /home && \
    git clone https://github.com/UFRBots/UFRBots-Team.git
    
RUN cd /home && \
    cd UFRBots-Team && \
    cd ssl-Client && \
    sh protobuf.sh
    
RUN cd /home && \
    cd UFRBots-Team && \
    cd ssl-Client && \
    cd net && \
    cd pb && \
    cd proto && \
    sh compile.sh 
    
RUN cd /home && \
    cd UFRBots-Team && \
    cd ssl-Client && \
    make

COPY ufrbots.sh /home/

WORKDIR /home
