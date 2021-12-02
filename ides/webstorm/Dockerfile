# syntax=docker/dockerfile:1
FROM ghcr.io/itopia-inc/spaces-base-images/spaces-ubuntu-base:focal

LABEL org.opencontainers.image.description="itopia Spaces image with WebStorm on Ubuntu"
LABEL org.opencontainers.image.source="https://github.com/itopia-inc/spaces-images"

COPY ides/webstorm/install_webstorm.sh /usr/share/dev-scripts/
RUN bash -c '/usr/share/dev-scripts/install_webstorm.sh'

COPY ides/webstorm/create_webstorm_desktop_shortcut.sh /usr/share/dev-scripts/
COPY ides/webstorm/WebStorm.desktop /usr/share/dev-scripts/
RUN bash -c '/usr/share/dev-scripts/create_webstorm_desktop_shortcut.sh'

COPY ides/webstorm/configure_webstorm_to_autostart.sh /usr/share/dev-scripts/
RUN bash -c '/usr/share/dev-scripts/configure_webstorm_to_autostart.sh'
