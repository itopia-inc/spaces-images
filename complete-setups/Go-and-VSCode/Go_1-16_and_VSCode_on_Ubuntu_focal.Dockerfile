# syntax=docker/dockerfile:1
FROM ghcr.io/itopia-inc/spaces-base-images/spaces-ubuntu-base:focal

LABEL org.opencontainers.image.description="itopia Spaces image for Go + VS Code on Ubuntu"
LABEL org.opencontainers.image.source="https://github.com/itopia-inc/spaces-images"

COPY runtimes/Go/install_Go_1-16_on_Linux.sh /usr/share/dev-scripts/
RUN bash -ce '/usr/share/dev-scripts/install_Go_1-16_on_Linux.sh'

COPY IDEs/VSCode/configure_VSCode_to_autostart.sh /usr/share/dev-scripts/
RUN bash -ce '/usr/share/dev-scripts/configure_VSCode_to_autostart.sh'
