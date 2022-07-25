# syntax=docker/dockerfile:1
FROM ghcr.io/itopia-inc/spaces-base-images/spaces-ubuntu-base:focal

LABEL org.opencontainers.image.description="itopia Spaces image for VS Code on Ubuntu"
LABEL org.opencontainers.image.source="https://github.com/itopia-inc/spaces-images"

COPY IDEs/VSCode/start_VSCode_with_repo.sh /usr/share/dev-scripts/

COPY IDEs/VSCode/configure_VSCode_to_autostart.sh /usr/share/dev-scripts/
RUN bash -ce '/usr/share/dev-scripts/configure_VSCode_to_autostart.sh'

COPY IDEs/VSCode/settings.json /usr/share/dev-scripts/VSCode_settings.json
COPY IDEs/VSCode/configure_VSCode_settings.sh /etc/selkies-user-init/03-VSCode-settings.sh