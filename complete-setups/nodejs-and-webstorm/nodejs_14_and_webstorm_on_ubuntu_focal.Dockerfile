# syntax=docker/dockerfile:1
FROM ghcr.io/itopia-inc/spaces-base-images/spaces-ubuntu-base:focal

LABEL org.opencontainers.image.description="itopia Spaces image for Node.js + WebStorm on Ubuntu"
LABEL org.opencontainers.image.source="https://github.com/itopia-inc/spaces-images"

COPY runtimes/nodejs/install_nodejs_14_on_ubuntu_focal.sh .
RUN bash -c './install_nodejs_14_on_ubuntu_focal.sh'

COPY ides/webstorm/install_webstorm.sh .
RUN bash -c './install_webstorm.sh'

COPY ides/webstorm/create_desktop_shortcut.sh .
COPY ides/webstorm/jetbrains-webstorm-ce.desktop .
RUN bash -c './create_desktop_shortcut.sh'

COPY ides/webstorm/configure_to_autostart.sh .
RUN bash -c './configure_to_autostart.sh'
