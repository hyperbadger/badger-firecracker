FROM ubuntu:22.04

RUN apt update;apt install -y openssh-server adduser passwd init sudo iproute2
RUN yes | unminimize
RUN adduser ubuntu
RUN echo 'ubuntu:ubuntu' | chpasswd
RUN echo 'ubuntu ALL=(ALL) NOPASSWD:ALL' | tee /etc/sudoers.d/ubuntu

ENTRYPOINT /bin/bash
