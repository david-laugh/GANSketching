FROM nvidia/cuda:11.3.1-cudnn8-devel-ubuntu20.04

RUN apt-get update
RUN apt-get install sudo
RUN sudo apt upgrade -y
RUN sudo apt update -y
RUN sudo apt-get install -y \
    python3.8 \
    python3.8-venv \
    python3.8-dev  \
    python3-pip
RUN sudo ln -s /usr/bin/python3.8 /usr/bin/python

WORKDIR /app
