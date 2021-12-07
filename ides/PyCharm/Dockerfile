# syntax=docker/dockerfile:1
FROM ghcr.io/itopia-inc/spaces-base-images/spaces-ubuntu-base:focal

LABEL org.opencontainers.image.description="itopia Spaces image with PyCharm on Ubuntu"
LABEL org.opencontainers.image.source="https://github.com/itopia-inc/spaces-images"

COPY ides/PyCharm/install_PyCharm.sh /usr/share/dev-scripts/
RUN bash -c '/usr/share/dev-scripts/install_PyCharm.sh'

COPY ides/PyCharm/create_PyCharm_desktop_shortcut.sh /usr/share/dev-scripts/
COPY ides/PyCharm/PyCharm_CE.desktop /usr/share/dev-scripts/
RUN bash -c '/usr/share/dev-scripts/create_PyCharm_desktop_shortcut.sh'

COPY ides/PyCharm/configure_PyCharm_to_autostart.sh /usr/share/dev-scripts/
RUN bash -c '/usr/share/dev-scripts/configure_PyCharm_to_autostart.sh'
