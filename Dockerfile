FROM pytorch/pytorch:2.5.0-cuda12.4-cudnn9-runtime as builder

RUN pip install -U pip && pip install torch fairscale fire sentencepiece && \
    apt update && DEBIAN_FRONTEND=noninteractive apt install -y --no-install-recommends wget curl vim git awscli && apt clean
