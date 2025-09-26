#FROM continuumio/miniconda3
#RUN conda install bioconda::entrez-direct

FROM ubuntu:22.04

RUN apt update -y && \
    apt upgrade -y && \
    apt install -y build-essential curl git && \
    rm -rf /var/lib/apt/lists/*
