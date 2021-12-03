# syntax=docker/dockerfile:1
FROM ghcr.io/itopia-inc/spaces-base-images/spaces-ubuntu-base:focal

LABEL org.opencontainers.image.description="itopia Spaces image for OpenJDK + Eclipse on Ubuntu"
LABEL org.opencontainers.image.source="https://github.com/itopia-inc/spaces-images"

COPY runtimes/openjdk/install_openjdk_11_on_ubuntu_focal.sh /usr/share/dev-scripts/
RUN bash -c '/usr/share/dev-scripts/install_openjdk_11_on_ubuntu_focal.sh'

COPY ides/eclipse/install_webstorm.sh /usr/share/dev-scripts/
RUN bash -c '/usr/share/dev-scripts/install_eclipse.sh'

COPY ides/eclipse/create_eclipse_desktop_shortcut.sh /usr/share/dev-scripts/
COPY ides/eclipse/Eclipse.desktop /usr/share/dev-scripts/
RUN bash -c '/usr/share/dev-scripts/create_eclipse_desktop_shortcut.sh'

COPY ides/eclipse/configure_eclipse_to_autostart.sh /usr/share/dev-scripts/
RUN bash -c '/usr/share/dev-scripts/configure_eclipse_to_autostart.sh'
