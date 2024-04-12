FROM pytorch/pytorch:2.2.2-cuda12.1-cudnn8-runtime as builder

RUN pip install torch fairscale fire sentencepiece && \
    apt update && apt install -y wget && apt clean
