# syntax=docker/dockerfile:1
FROM ghcr.io/itopia-inc/spaces-base-images/spaces-ubuntu-base:focal
RUN nope

LABEL org.opencontainers.image.description="itopia Spaces image with Eclipse on Ubuntu"
LABEL org.opencontainers.image.source="https://github.com/itopia-inc/spaces-images"

COPY IDEs/Eclipse/install_Eclipse.sh /usr/share/dev-scripts/
RUN bash -ce '/usr/share/dev-scripts/install_Eclipse.sh'

COPY IDEs/Eclipse/start_Eclipse_with_repo.sh /usr/share/dev-scripts/
COPY IDEs/Eclipse/create_Eclipse_desktop_shortcut.sh /usr/share/dev-scripts/
COPY IDEs/Eclipse/configure_Eclipse_to_autostart.sh /usr/share/dev-scripts/
COPY IDEs/Eclipse/Eclipse.desktop /usr/share/dev-scripts/
RUN bash -ce '/usr/share/dev-scripts/create_Eclipse_desktop_shortcut.sh'
RUN bash -ce '/usr/share/dev-scripts/configure_Eclipse_to_autostart.sh'