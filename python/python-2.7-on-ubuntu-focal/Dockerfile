# syntax=docker/dockerfile:1
FROM ghcr.io/itopia-inc/spaces-base-images/spaces-ubuntu-base:focal

LABEL org.opencontainers.image.description="Pre-configured itopia Spaces image for Python developers on Ubuntu 20.04 (Focal Fossa)"
LABEL org.opencontainers.image.source="https://github.com/itopia-inc/spaces-images"

# Configure the pre-installed Python v2.7
RUN sudo cp /usr/bin/python2.7 /usr/bin/python2 && \
    sudo cp /usr/bin/python2.7 /usr/bin/python

# TODO: Install PyCharm
