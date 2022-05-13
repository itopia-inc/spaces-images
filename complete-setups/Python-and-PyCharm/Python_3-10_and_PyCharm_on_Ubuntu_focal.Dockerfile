# syntax=docker/dockerfile:1
FROM ghcr.io/itopia-inc/spaces-base-images/spaces-ubuntu-base:focal

LABEL org.opencontainers.image.description="itopia Spaces image for Python development in PyCharm on Ubuntu"
LABEL org.opencontainers.image.source="https://github.com/itopia-inc/spaces-images"

COPY languages/Python/install_Python_3-10_on_Ubuntu_focal.sh /usr/share/dev-scripts/
RUN bash -ce '/usr/share/dev-scripts/install_Python_3-10_on_Ubuntu_focal.sh'

COPY IDEs/PyCharm/install_PyCharm.sh /usr/share/dev-scripts/
RUN bash -ce '/usr/share/dev-scripts/install_PyCharm.sh'

COPY IDEs/PyCharm/create_PyCharm_desktop_shortcut.sh /usr/share/dev-scripts/
COPY IDEs/PyCharm/PyCharm_CE.desktop /usr/share/dev-scripts/
RUN bash -ce '/usr/share/dev-scripts/create_PyCharm_desktop_shortcut.sh'

COPY IDEs/PyCharm/start_PyCharm_with_repo.sh /usr/share/dev-scripts/

COPY IDEs/PyCharm/configure_PyCharm_to_autostart.sh /usr/share/dev-scripts/
RUN bash -ce '/usr/share/dev-scripts/configure_PyCharm_to_autostart.sh'
