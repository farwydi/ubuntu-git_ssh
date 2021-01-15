FROM ubuntu:focal

RUN apt-get update && apt-get install -y \
    openssh-client\
    git\
 && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /root/.ssh && \
    chmod 700 /root/.ssh