# syntax=docker/dockerfile:1
FROM ghcr.io/itopia-inc/spaces-base-images/spaces-ubuntu-base:focal

LABEL org.opencontainers.image.description="itopia Spaces image for OpenJDK + VS Code on Ubuntu"
LABEL org.opencontainers.image.source="https://github.com/itopia-inc/spaces-images"

COPY runtimes/OpenJDK/install_OpenJDK_8_on_Ubuntu_focal.sh /usr/share/dev-scripts/
RUN bash -c '/usr/share/dev-scripts/install_OpenJDK_8_on_Ubuntu_focal.sh'

COPY ides/VSCode/configure_VSCode_to_autostart.sh /usr/share/dev-scripts/
RUN bash -c '/usr/share/dev-scripts/configure_VSCode_to_autostart.sh'
