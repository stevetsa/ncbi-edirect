# Start with a base image that has common tools
FROM ubuntu:22.04

# Install Perl and a few common modules
RUN apt-get update && \
    apt-get install -y perl cpanminus pip

# Create a work directory and copy your project files
WORKDIR /home/user
COPY . /home/user

RUN pip install biopython
