# syntax=docker/dockerfile:1
FROM ghcr.io/itopia-inc/spaces-base-images/spaces-ubuntu-base:focal

LABEL org.opencontainers.image.description="itopia Spaces image for OpenJDK + Eclipse on Ubuntu"
LABEL org.opencontainers.image.source="https://github.com/itopia-inc/spaces-images"

COPY runtimes/OpenJDK/install_OpenJDK_11_on_Ubuntu_focal.sh /usr/share/dev-scripts/
RUN bash -c '/usr/share/dev-scripts/install_OpenJDK_11_on_Ubuntu_focal.sh'

COPY ides/Eclipse/install_WebStorm.sh /usr/share/dev-scripts/
RUN bash -c '/usr/share/dev-scripts/install_Eclipse.sh'

COPY ides/Eclipse/create_Eclipse_desktop_shortcut.sh /usr/share/dev-scripts/
COPY ides/Eclipse/Eclipse.desktop /usr/share/dev-scripts/
RUN bash -c '/usr/share/dev-scripts/create_Eclipse_desktop_shortcut.sh'

COPY ides/Eclipse/configure_Eclipse_to_autostart.sh /usr/share/dev-scripts/
RUN bash -c '/usr/share/dev-scripts/configure_Eclipse_to_autostart.sh'
