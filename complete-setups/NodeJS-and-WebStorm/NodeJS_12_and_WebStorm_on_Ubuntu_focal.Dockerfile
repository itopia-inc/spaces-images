# syntax=docker/dockerfile:1
FROM ghcr.io/itopia-inc/spaces-base-images/spaces-ubuntu-base:focal

LABEL org.opencontainers.image.description="itopia Spaces image for Node.js + WebStorm on Ubuntu"
LABEL org.opencontainers.image.source="https://github.com/itopia-inc/spaces-images"

COPY runtimes/NodeJS/install_NodeJS_12_on_Ubuntu_focal.sh /usr/share/dev-scripts/
RUN bash -c '/usr/share/dev-scripts/install_NodeJS_12_on_Ubuntu_focal.sh'

COPY ides/WebStorm/install_WebStorm.sh /usr/share/dev-scripts/
RUN bash -c '/usr/share/dev-scripts/install_WebStorm.sh'

COPY ides/WebStorm/create_WebStorm_desktop_shortcut.sh /usr/share/dev-scripts/
COPY ides/WebStorm/WebStorm.desktop /usr/share/dev-scripts/
RUN bash -c '/usr/share/dev-scripts/create_WebStorm_desktop_shortcut.sh'

COPY ides/WebStorm/configure_WebStorm_to_autostart.sh /usr/share/dev-scripts/
RUN bash -c '/usr/share/dev-scripts/configure_WebStorm_to_autostart.sh'
