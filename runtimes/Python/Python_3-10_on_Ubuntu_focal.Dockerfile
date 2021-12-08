# syntax=docker/dockerfile:1
FROM ghcr.io/itopia-inc/spaces-base-images/spaces-ubuntu-base:focal

LABEL org.opencontainers.image.description="itopia Spaces image with Python on Ubuntu"
LABEL org.opencontainers.image.source="https://github.com/itopia-inc/spaces-images"

COPY runtimes/Python/install_Python_3-10_on_Ubuntu_focal.sh /usr/share/dev-scripts/
RUN bash -ce '/usr/share/dev-scripts/install_Python_3-10_on_Ubuntu_focal.sh'
