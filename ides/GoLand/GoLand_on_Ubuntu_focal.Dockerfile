# syntax=docker/dockerfile:1
FROM ghcr.io/itopia-inc/spaces-base-images/spaces-ubuntu-base:focal

LABEL org.opencontainers.image.description="itopia Spaces image with GoLand on Ubuntu"
LABEL org.opencontainers.image.source="https://github.com/itopia-inc/spaces-images"

COPY ides/GoLand/install_GoLand.sh /usr/share/dev-scripts/
RUN bash -c '/usr/share/dev-scripts/install_GoLand.sh'

COPY ides/GoLand/create_GoLand_desktop_shortcut.sh /usr/share/dev-scripts/
COPY ides/GoLand/GoLand.desktop /usr/share/dev-scripts/
RUN bash -c '/usr/share/dev-scripts/create_GoLand_desktop_shortcut.sh'

COPY ides/GoLand/configure_GoLand_to_autostart.sh /usr/share/dev-scripts/
RUN bash -c '/usr/share/dev-scripts/configure_GoLand_to_autostart.sh'
