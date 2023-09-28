FROM nvidia/cuda:12.2.0-runtime-ubuntu22.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y \
        software-properties-common \
        && rm -rf /var/lib/apt/lists/*

RUN apt update && add-apt-repository ppa:deadsnakes/ppa \
        && apt install python3.10 python3.10-distutils pip -y \
        && rm -rf /var/lib/apt/lists/*

RUN update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.10 1
RUN apt-get update && apt-get install -y \
        ffmpeg libsm6 libxext6 git \
        && rm -rf /var/lib/apt/lists/*

WORKDIR /stable-diffusion-webui
COPY stable-diffusion-webui/ .

RUN pip install -r requirements.txt
