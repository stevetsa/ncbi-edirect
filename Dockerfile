FROM continuumio/miniconda3
RUN conda install bioconda::entrez-direct
