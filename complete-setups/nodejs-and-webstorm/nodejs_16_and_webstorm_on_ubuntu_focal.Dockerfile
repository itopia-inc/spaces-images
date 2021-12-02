# syntax=docker/dockerfile:1
FROM ghcr.io/itopia-inc/spaces-base-images/spaces-ubuntu-base:focal

LABEL org.opencontainers.image.description="itopia Spaces image for Node.js + WebStorm on Ubuntu"
LABEL org.opencontainers.image.source="https://github.com/itopia-inc/spaces-images"

COPY runtimes/nodejs/install_nodejs_16_on_ubuntu_focal.sh /usr/share/dev-scripts/
RUN bash -c '/usr/share/dev-scripts/install_nodejs_16_on_ubuntu_focal.sh'

COPY ides/webstorm/install_webstorm.sh /usr/share/dev-scripts/
RUN bash -c '/usr/share/dev-scripts/install_webstorm.sh'

COPY ides/webstorm/create_webstorm_desktop_shortcut.sh /usr/share/dev-scripts/
COPY ides/webstorm/jetbrains-webstorm-ce.desktop /usr/share/dev-scripts/
RUN bash -c '/usr/share/dev-scripts/create_desktop_shortcut.sh'

COPY ides/webstorm/configure_webstorm_to_autostart.sh /usr/share/dev-scripts/
RUN bash -c '/usr/share/dev-scripts/configure_to_autostart.sh'
