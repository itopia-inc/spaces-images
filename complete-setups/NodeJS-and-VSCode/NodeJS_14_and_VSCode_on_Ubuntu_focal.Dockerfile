# syntax=docker/dockerfile:1
FROM ghcr.io/itopia-inc/spaces-base-images/spaces-ubuntu-base:focal

LABEL org.opencontainers.image.description="itopia Spaces image for Node.js + VS Code on Ubuntu"
LABEL org.opencontainers.image.source="https://github.com/itopia-inc/spaces-images"

COPY runtimes/NodeJS/install_NodeJS_14_on_ubuntu_focal.sh /usr/share/dev-scripts/
RUN bash -c '/usr/share/dev-scripts/install_NodeJS_14_on_ubuntu_focal.sh'

COPY ides/VSCode/configure_VSCode_to_autostart.sh /usr/share/dev-scripts/
RUN bash -c '/usr/share/dev-scripts/configure_VSCode_to_autostart.sh'
