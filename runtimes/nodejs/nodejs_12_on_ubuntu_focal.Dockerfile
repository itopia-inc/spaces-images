# syntax=docker/dockerfile:1
FROM ghcr.io/itopia-inc/spaces-base-images/spaces-ubuntu-base:focal

LABEL org.opencontainers.image.description="itopia Spaces image with Node.js on Ubuntu"
LABEL org.opencontainers.image.source="https://github.com/itopia-inc/spaces-images"

COPY runtimes/nodejs/install_nodejs_12_on_ubuntu_focal.sh .
RUN ls
RUN bash -c './install_nodejs_12_on_ubuntu_focal.sh'
