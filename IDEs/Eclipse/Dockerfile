# syntax=docker/dockerfile:1
FROM ghcr.io/itopia-inc/spaces-base-images/spaces-ubuntu-base:focal

LABEL org.opencontainers.image.description="itopia Spaces image with Eclipse on Ubuntu"
LABEL org.opencontainers.image.source="https://github.com/itopia-inc/spaces-images"

COPY IDEs/Eclipse/install_Eclipse.sh /usr/share/dev-scripts/
RUN bash -c '/usr/share/dev-scripts/install_Eclipse.sh'

COPY IDEs/Eclipse/create_Eclipse_desktop_shortcut.sh /usr/share/dev-scripts/
COPY IDEs/Eclipse/Eclipse.desktop /usr/share/dev-scripts/
RUN bash -c '/usr/share/dev-scripts/create_Eclipse_desktop_shortcut.sh'

COPY IDEs/Eclipse/configure_Eclipse_to_autostart.sh /usr/share/dev-scripts/
RUN bash -c '/usr/share/dev-scripts/configure_Eclipse_to_autostart.sh'
