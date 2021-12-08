# syntax=docker/dockerfile:1
FROM ghcr.io/itopia-inc/spaces-base-images/spaces-ubuntu-base:focal

LABEL org.opencontainers.image.description="itopia Spaces image with GoLand on Ubuntu"
LABEL org.opencontainers.image.source="https://github.com/itopia-inc/spaces-images"

COPY IDEs/GoLand/install_GoLand.sh /usr/share/dev-scripts/
RUN bash -c '/usr/share/dev-scripts/install_GoLand.sh'

COPY IDEs/GoLand/create_GoLand_desktop_shortcut.sh /usr/share/dev-scripts/
COPY IDEs/GoLand/GoLand.desktop /usr/share/dev-scripts/
RUN bash -c '/usr/share/dev-scripts/create_GoLand_desktop_shortcut.sh'

COPY IDEs/GoLand/configure_GoLand_to_autostart.sh /usr/share/dev-scripts/
RUN bash -c '/usr/share/dev-scripts/configure_GoLand_to_autostart.sh'
