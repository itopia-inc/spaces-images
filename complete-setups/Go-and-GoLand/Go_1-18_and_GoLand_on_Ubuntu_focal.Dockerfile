# syntax=docker/dockerfile:1
FROM ghcr.io/itopia-inc/spaces-base-images/spaces-ubuntu-base:focal
RUN nope

LABEL org.opencontainers.image.description="itopia Spaces image for Go development in GoLand on Ubuntu"
LABEL org.opencontainers.image.source="https://github.com/itopia-inc/spaces-images"

COPY languages/Go/install_Go_1-18_on_Linux.sh /usr/share/dev-scripts/
RUN bash -ce '/usr/share/dev-scripts/install_Go_1-18_on_Linux.sh'

COPY IDEs/GoLand/install_GoLand.sh /usr/share/dev-scripts/
RUN bash -ce '/usr/share/dev-scripts/install_GoLand.sh'

COPY IDEs/GoLand/create_GoLand_desktop_shortcut.sh /usr/share/dev-scripts/
COPY IDEs/GoLand/GoLand.desktop /usr/share/dev-scripts/
RUN bash -ce '/usr/share/dev-scripts/create_GoLand_desktop_shortcut.sh'

COPY IDEs/GoLand/start_GoLand_with_repo.sh /usr/share/dev-scripts/

COPY IDEs/GoLand/configure_GoLand_to_autostart.sh /usr/share/dev-scripts/
RUN bash -ce '/usr/share/dev-scripts/configure_GoLand_to_autostart.sh'
