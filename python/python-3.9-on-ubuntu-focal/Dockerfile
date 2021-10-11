# syntax=docker/dockerfile:1
FROM ghcr.io/itopia-inc/spaces-base-images/spaces-ubuntu-base:focal

LABEL org.opencontainers.image.description="Pre-configured itopia Spaces image for Python developers on Ubuntu 20.04 (Focal Fossa)"
LABEL org.opencontainers.image.source="https://github.com/itopia-inc/spaces-images"

# Install Python v3.9
# Note: The echo command exists to make this image easier to maintain.
#       When a new patch version of Python v3.9 is released to the PPA,
#       update the echo command to invalidate the layer cache.
RUN sudo add-apt-repository -y ppa:deadsnakes/ppa && \
    echo 'Installing python3.9.7-1+focal1' && \ 
    sudo apt-get install -y python3.9 && \
    sudo cp /usr/bin/python3.9 /usr/bin/python3 && \
    sudo cp /usr/bin/python3.9 /usr/bin/python

# TODO: Install PyCharm
