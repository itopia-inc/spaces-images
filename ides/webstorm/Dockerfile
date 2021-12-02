# syntax=docker/dockerfile:1
FROM ghcr.io/itopia-inc/spaces-base-images/spaces-ubuntu-base:focal

LABEL org.opencontainers.image.description="itopia Spaces image with WebStorm on Ubuntu"
LABEL org.opencontainers.image.source="https://github.com/itopia-inc/spaces-images"

COPY ides/webstorm/install_webstorm.sh .
RUN bash -c './install_webstorm.sh'

COPY ides/webstorm/create_desktop_shortcut.sh .
COPY ides/webstorm/WebStorm.desktop .
RUN bash -c './create_desktop_shortcut.sh'

COPY ides/webstorm/configure_to_autostart.sh .
RUN bash -c './configure_to_autostart.sh'
