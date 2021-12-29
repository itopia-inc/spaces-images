# syntax=docker/dockerfile:1
FROM ghcr.io/itopia-inc/spaces-base-images/spaces-ubuntu-base:focal

LABEL org.opencontainers.image.description="itopia Spaces image for everything on Ubuntu"
LABEL org.opencontainers.image.source="https://github.com/itopia-inc/spaces-images"

COPY runtimes/Go/install_Go_1-17_on_Linux.sh /usr/share/dev-scripts/
RUN bash -ce '/usr/share/dev-scripts/install_Go_1-17_on_Linux.sh'
COPY runtimes/NodeJS/install_NodeJS_16_on_Ubuntu_focal.sh /usr/share/dev-scripts/
RUN bash -ce '/usr/share/dev-scripts/install_NodeJS_16_on_Ubuntu_focal.sh'
COPY runtimes/OpenJDK/install_OpenJDK_11_on_Ubuntu_focal.sh /usr/share/dev-scripts/
RUN bash -ce '/usr/share/dev-scripts/install_OpenJDK_11_on_Ubuntu_focal.sh'
COPY runtimes/Python/install_Python_3-10_on_Ubuntu_focal.sh /usr/share/dev-scripts/
RUN bash -ce '/usr/share/dev-scripts/install_Python_3-10_on_Ubuntu_focal.sh'

COPY IDEs/Eclipse/install_Eclipse.sh /usr/share/dev-scripts/
RUN bash -ce '/usr/share/dev-scripts/install_Eclipse.sh'
COPY IDEs/GoLand/install_GoLand.sh /usr/share/dev-scripts/
RUN bash -ce '/usr/share/dev-scripts/install_GoLand.sh'
COPY IDEs/PyCharm/install_PyCharm.sh /usr/share/dev-scripts/
RUN bash -ce '/usr/share/dev-scripts/install_PyCharm.sh'
COPY IDEs/WebStorm/install_WebStorm.sh /usr/share/dev-scripts/
RUN bash -ce '/usr/share/dev-scripts/install_WebStorm.sh'

COPY IDEs/Eclipse/create_Eclipse_desktop_shortcut.sh /usr/share/dev-scripts/
COPY IDEs/Eclipse/Eclipse.desktop /usr/share/dev-scripts/
RUN bash -ce '/usr/share/dev-scripts/create_Eclipse_desktop_shortcut.sh'
COPY IDEs/GoLand/create_GoLand_desktop_shortcut.sh /usr/share/dev-scripts/
COPY IDEs/GoLand/GoLand.desktop /usr/share/dev-scripts/
RUN bash -ce '/usr/share/dev-scripts/create_GoLand_desktop_shortcut.sh'
COPY IDEs/PyCharm/create_PyCharm_desktop_shortcut.sh /usr/share/dev-scripts/
COPY IDEs/PyCharm/PyCharm.desktop /usr/share/dev-scripts/
RUN bash -ce '/usr/share/dev-scripts/create_PyCharm_desktop_shortcut.sh'
COPY IDEs/WebStorm/create_WebStorm_desktop_shortcut.sh /usr/share/dev-scripts/
COPY IDEs/WebStorm/WebStorm.desktop /usr/share/dev-scripts/
RUN bash -ce '/usr/share/dev-scripts/create_WebStorm_desktop_shortcut.sh'
