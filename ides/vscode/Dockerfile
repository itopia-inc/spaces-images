# syntax=docker/dockerfile:1
FROM ghcr.io/itopia-inc/spaces-base-images/spaces-ubuntu-base:focal

LABEL org.opencontainers.image.description="itopia Spaces image for VS Code on Ubuntu"
LABEL org.opencontainers.image.source="https://github.com/itopia-inc/spaces-images"

COPY ides/vscode/configure_vscode_to_autostart.sh /usr/share/dev-scripts/
RUN bash -c '/usr/share/dev-scripts/configure_vscode_to_autostart.sh'
