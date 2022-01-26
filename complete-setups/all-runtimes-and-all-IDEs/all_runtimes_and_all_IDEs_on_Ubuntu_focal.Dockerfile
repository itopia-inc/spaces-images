# syntax=docker/dockerfile:1
ARG BASE_IMAGE=ghcr.io/itopia-inc/spaces-base-images/spaces-ubuntu-base:focal
FROM ${BASE_IMAGE}

LABEL org.opencontainers.image.description="itopia Spaces image for all runtimes and all IDEs on Ubuntu"
LABEL org.opencontainers.image.source="https://github.com/itopia-inc/spaces-images"

ARG BASE_IMAGE
RUN echo "Using BASE_IMAGE: ${BASE_IMAGE}"

###
# Install runtimes
###

# Golang
COPY runtimes/Go/install_Go_1-17_on_Linux.sh /usr/share/dev-scripts/
RUN bash -ce '/usr/share/dev-scripts/install_Go_1-17_on_Linux.sh'

# NodeJS
COPY runtimes/NodeJS/install_NodeJS_16_on_Ubuntu_focal.sh /usr/share/dev-scripts/
RUN bash -ce '/usr/share/dev-scripts/install_NodeJS_16_on_Ubuntu_focal.sh'

# OpenJDK
COPY runtimes/OpenJDK/install_OpenJDK_11_on_Ubuntu_focal.sh /usr/share/dev-scripts/
RUN bash -ce '/usr/share/dev-scripts/install_OpenJDK_11_on_Ubuntu_focal.sh'

# Python
COPY runtimes/Python/install_Python_3-10_on_Ubuntu_focal.sh /usr/share/dev-scripts/
RUN bash -ce '/usr/share/dev-scripts/install_Python_3-10_on_Ubuntu_focal.sh'

###
# Install IDEs
###

# Eclipse
COPY IDEs/Eclipse/install_Eclipse.sh /usr/share/dev-scripts/
RUN bash -ce '/usr/share/dev-scripts/install_Eclipse.sh'

# GoLand
COPY IDEs/GoLand/install_GoLand.sh /usr/share/dev-scripts/
RUN bash -ce '/usr/share/dev-scripts/install_GoLand.sh'

# PyCharm
COPY IDEs/PyCharm/install_PyCharm.sh /usr/share/dev-scripts/
RUN bash -ce '/usr/share/dev-scripts/install_PyCharm.sh'

# WebStorm
COPY IDEs/WebStorm/install_WebStorm.sh /usr/share/dev-scripts/
RUN bash -ce '/usr/share/dev-scripts/install_WebStorm.sh'

###
# Configure IDEs
###

# VSCode
COPY IDEs/VSCode/start_vscode_with_repo.sh /usr/share/dev-scripts/
COPY IDEs/VSCode/configure_VSCode_to_autostart.sh /usr/share/dev-scripts/
RUN bash -ce '/usr/share/dev-scripts/configure_VSCode_to_autostart.sh'

# Eclipse
COPY IDEs/Eclipse/start_eclipse_with_repo.sh /usr/share/dev-scripts/
COPY IDEs/Eclipse/create_Eclipse_desktop_shortcut.sh /usr/share/dev-scripts/
COPY IDEs/Eclipse/configure_Eclipse_to_autostart.sh /usr/share/dev-scripts/
COPY IDEs/Eclipse/Eclipse.desktop /usr/share/dev-scripts/
RUN bash -ce '/usr/share/dev-scripts/create_Eclipse_desktop_shortcut.sh'
RUN bash -ce '/usr/share/dev-scripts/configure_Eclipse_to_autostart.sh'

# GoLand
COPY IDEs/GoLand/start_goland_with_repo.sh /usr/share/dev-scripts/
COPY IDEs/GoLand/create_GoLand_desktop_shortcut.sh /usr/share/dev-scripts/
COPY IDEs/GoLand/configure_GoLand_to_autostart.sh /usr/share/dev-scripts/
COPY IDEs/GoLand/GoLand.desktop /usr/share/dev-scripts/
RUN bash -ce '/usr/share/dev-scripts/create_GoLand_desktop_shortcut.sh'
RUN bash -ce '/usr/share/dev-scripts/configure_GoLand_to_autostart.sh'

# PyCharm
COPY IDEs/PyCharm/start_pycharm_with_repo.sh /usr/share/dev-scripts/
COPY IDEs/PyCharm/create_PyCharm_desktop_shortcut.sh /usr/share/dev-scripts/
COPY IDEs/PyCharm/configure_PyCharm_to_autostart.sh /usr/share/dev-scripts/
COPY IDEs/PyCharm/PyCharm_CE.desktop /usr/share/dev-scripts/
RUN bash -ce '/usr/share/dev-scripts/create_PyCharm_desktop_shortcut.sh'
RUN bash -ce '/usr/share/dev-scripts/configure_PyCharm_to_autostart.sh'

# WebStorm
COPY IDEs/WebStorm/start_webstorm_with_repo.sh /usr/share/dev-scripts/
COPY IDEs/WebStorm/create_WebStorm_desktop_shortcut.sh /usr/share/dev-scripts/
COPY IDEs/WebStorm/configure_WebStorm_to_autostart.sh /usr/share/dev-scripts/
COPY IDEs/WebStorm/WebStorm.desktop /usr/share/dev-scripts/
RUN bash -ce '/usr/share/dev-scripts/create_WebStorm_desktop_shortcut.sh'
RUN bash -ce '/usr/share/dev-scripts/configure_WebStorm_to_autostart.sh'

# Set default auto-launch IDE
ENV VDI_launchIDE=vscode
