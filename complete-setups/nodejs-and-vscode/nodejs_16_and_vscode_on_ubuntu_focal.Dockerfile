# syntax=docker/dockerfile:1
FROM ghcr.io/itopia-inc/spaces-base-images/spaces-ubuntu-base:focal

LABEL org.opencontainers.image.description="itopia Spaces image for Node.js + VS Code on Ubuntu"
LABEL org.opencontainers.image.source="https://github.com/itopia-inc/spaces-images"

COPY runtimes/nodejs/install_nodejs_16_on_ubuntu_focal.sh .
RUN bash -c './install_nodejs_16_on_ubuntu_focal.sh'

COPY ides/vscode/configure_to_autostart.sh .
RUN bash -c './configure_to_autostart.sh'
