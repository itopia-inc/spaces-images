# syntax=docker/dockerfile:1
FROM ghcr.io/itopia-inc/spaces-base-images/spaces-ubuntu-base:focal

LABEL org.opencontainers.image.description="itopia Spaces image for Go 1.18 developers on Ubuntu"
LABEL org.opencontainers.image.source="https://github.com/itopia-inc/spaces-images"

COPY languages/Go/install_Go_1-18_on_Linux.sh /usr/share/dev-scripts/
RUN bash -ce '/usr/share/dev-scripts/install_Go_1-18_on_Linux.sh'
