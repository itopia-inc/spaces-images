# syntax=docker/dockerfile:1
FROM ghcr.io/itopia-inc/spaces-base-images/spaces-ubuntu-base:focal

LABEL org.opencontainers.image.description="itopia Spaces image for Python + PyCharm on Ubuntu"
LABEL org.opencontainers.image.source="https://github.com/itopia-inc/spaces-images"

COPY runtimes/python/install_python_3-9_on_ubuntu_focal.sh /usr/share/dev-scripts/
RUN bash -c '/usr/share/dev-scripts/install_python_3-9_on_ubuntu_focal.sh'

COPY ides/pycharm/install_pycharm.sh /usr/share/dev-scripts/
RUN bash -c '/usr/share/dev-scripts/install_pycharm.sh'

COPY ides/pycharm/create_pycharm_desktop_shortcut.sh /usr/share/dev-scripts/
COPY ides/pycharm/jetbrains-pycharm-ce.desktop /usr/share/dev-scripts/
RUN bash -c '/usr/share/dev-scripts/create_desktop_shortcut.sh'

COPY ides/pycharm/configure_pycharm_to_autostart.sh /usr/share/dev-scripts/
RUN bash -c '/usr/share/dev-scripts/configure_to_autostart.sh'
