# syntax=docker/dockerfile:1
FROM ghcr.io/itopia-inc/spaces-base-images/spaces-ubuntu-base:focal

LABEL org.opencontainers.image.description="Pre-configured itopia Spaces image for Python developers on Ubuntu 20.04 (Focal Fossa)"
LABEL org.opencontainers.image.source="https://github.com/itopia-inc/spaces-images"

# Configure the pre-installed Python v2.7
RUN sudo cp /usr/bin/python2.7 /usr/bin/python2 && \
    sudo cp /usr/bin/python2.7 /usr/bin/python

# Install PyCharm
RUN curl -LOs https://download.jetbrains.com/python/pycharm-community-2021.2.2.tar.gz && \
    curl -LOs https://download.jetbrains.com/python/pycharm-community-2021.2.2.tar.gz.sha256 && \
    sha256sum -c pycharm-community-2021.2.2.tar.gz.sha256
RUN sudo tar xzf pycharm-community-2021.2.2.tar.gz -C /opt/ && \
    cd /opt/pycharm-community-2021.2.2/bin

# TODO: Add a desktop shortcut for PyCharm, via customization script.
