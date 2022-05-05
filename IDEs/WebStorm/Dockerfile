# syntax=docker/dockerfile:1
FROM ghcr.io/itopia-inc/spaces-base-images/spaces-ubuntu-base:focal

LABEL org.opencontainers.image.description="itopia Spaces image with WebStorm on Ubuntu"
LABEL org.opencontainers.image.source="https://github.com/itopia-inc/spaces-images"

COPY IDEs/WebStorm/install_WebStorm.sh /usr/share/dev-scripts/
RUN bash -ce '/usr/share/dev-scripts/install_WebStorm.sh'

COPY IDEs/WebStorm/start_WebStorm_with_repo.sh /usr/share/dev-scripts/
COPY IDEs/WebStorm/create_WebStorm_desktop_shortcut.sh /usr/share/dev-scripts/
COPY IDEs/WebStorm/configure_WebStorm_to_autostart.sh /usr/share/dev-scripts/
COPY IDEs/WebStorm/WebStorm.desktop /usr/share/dev-scripts/
RUN bash -ce '/usr/share/dev-scripts/create_WebStorm_desktop_shortcut.sh'
RUN bash -ce '/usr/share/dev-scripts/configure_WebStorm_to_autostart.sh'
