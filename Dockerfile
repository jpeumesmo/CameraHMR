FROM pytorch/pytorch:2.0.0-cuda11.7-cudnn8-runtime
LABEL maintainer="João Pedro Moreira Ferreira"


ENV DEBIAN_FRONTEND=noninteractive

RUN apt update; apt upgrade -y; apt install -y \
    git \
    libsm6 libxrender1 libfontconfig1 libgl1-mesa-glx libglib2.0-0 libxext6 \
    build-essential \
    wget

RUN pip install torch==2.0.0 torchvision==0.15.0 torchaudio==2.0.0;  \
    pip install Cython

COPY requirements.txt /tmp/requirements.txt

RUN pip install -r /tmp/requirements.txt

