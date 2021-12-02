# syntax=docker/dockerfile:1
FROM ghcr.io/itopia-inc/spaces-base-images/spaces-ubuntu-base:focal

LABEL org.opencontainers.image.description="itopia Spaces image for Python + PyCharm on Ubuntu"
LABEL org.opencontainers.image.source="https://github.com/itopia-inc/spaces-images"

COPY runtimes/python/install_python_2-7_on_ubuntu_focal.sh .
RUN bash -c './install_python_2-7_on_ubuntu_focal.sh'

COPY ides/pycharm/install_pycharm.sh .
RUN bash -c './install_pycharm.sh'

COPY ides/pycharm/create_desktop_shortcut.sh .
COPY ides/pycharm/jetbrains-pycharm-ce.desktop .
RUN bash -c './create_desktop_shortcut.sh'

COPY ides/pycharm/configure_to_autostart.sh .
RUN bash -c './configure_to_autostart.sh'
