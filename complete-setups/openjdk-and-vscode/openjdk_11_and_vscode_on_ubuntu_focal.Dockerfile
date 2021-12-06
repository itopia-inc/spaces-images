# syntax=docker/dockerfile:1
FROM ghcr.io/itopia-inc/spaces-base-images/spaces-ubuntu-base:focal

LABEL org.opencontainers.image.description="itopia Spaces image for OpenJDK + VS Code on Ubuntu"
LABEL org.opencontainers.image.source="https://github.com/itopia-inc/spaces-images"

COPY runtimes/openjdk/install_openjdk_11_on_ubuntu_focal.sh /usr/share/dev-scripts/
RUN bash -c '/usr/share/dev-scripts/install_openjdk_11_on_ubuntu_focal.sh'

COPY ides/vscode/install_webstorm.sh /usr/share/dev-scripts/
RUN bash -c '/usr/share/dev-scripts/install_vscode.sh'

COPY ides/vscode/create_vscode_desktop_shortcut.sh /usr/share/dev-scripts/
COPY ides/vscode/Code.desktop /usr/share/dev-scripts/
RUN bash -c '/usr/share/dev-scripts/create_vscode_desktop_shortcut.sh'

COPY ides/vscode/configure_vscode_to_autostart.sh /usr/share/dev-scripts/
RUN bash -c '/usr/share/dev-scripts/configure_vscode_to_autostart.sh'
