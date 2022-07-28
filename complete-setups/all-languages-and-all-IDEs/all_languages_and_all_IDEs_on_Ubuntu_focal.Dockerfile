# syntax=docker/dockerfile:1
ARG BASE_IMAGE=ghcr.io/itopia-inc/spaces-base-images/spaces-ubuntu-base:focal
FROM ${BASE_IMAGE}

LABEL org.opencontainers.image.description="itopia Spaces image for development on Ubuntu (with all supported language dev tools & IDEs installed)"
LABEL org.opencontainers.image.source="https://github.com/itopia-inc/spaces-images"

ARG BASE_IMAGE
RUN echo "Using BASE_IMAGE: ${BASE_IMAGE}"

###
# Install languages
###

# dotNET
COPY languages/dotNET/install_dotNET_6_on_Ubuntu_focal.sh /usr/share/dev-scripts/
RUN bash -ce '/usr/share/dev-scripts/install_dotNET_6_on_Ubuntu_focal.sh'

# Go
COPY languages/Go/install_Go_1-18_on_Linux.sh /usr/share/dev-scripts/
RUN bash -ce '/usr/share/dev-scripts/install_Go_1-18_on_Linux.sh'

# NodeJS
COPY languages/NodeJS/install_NodeJS_18_on_Ubuntu_focal.sh /usr/share/dev-scripts/
RUN bash -ce '/usr/share/dev-scripts/install_NodeJS_18_on_Ubuntu_focal.sh'

# OpenJDK
COPY languages/OpenJDK/install_OpenJDK_11_on_Ubuntu_focal.sh /usr/share/dev-scripts/
RUN bash -ce '/usr/share/dev-scripts/install_OpenJDK_11_on_Ubuntu_focal.sh'

# Python
COPY languages/Python/install_Python_3-10_on_Ubuntu_focal.sh /usr/share/dev-scripts/
RUN bash -ce '/usr/share/dev-scripts/install_Python_3-10_on_Ubuntu_focal.sh'
COPY languages/Python/get-pip.py /usr/share/dev-scripts/
COPY languages/Python/pip.conf /usr/share/dev-scripts/
COPY languages/Python/install_pip.sh /etc/selkies-user-init/03-install-pip.sh

###
# Install IDEs
###

# Eclipse
COPY IDEs/Eclipse/install_Eclipse.sh /usr/share/dev-scripts/
RUN bash -ce '/usr/share/dev-scripts/install_Eclipse.sh'

# GoLand
COPY IDEs/GoLand/install_GoLand.sh /usr/share/dev-scripts/
RUN bash -ce '/usr/share/dev-scripts/install_GoLand.sh'

# IDEA
COPY IDEs/IDEA/install_IDEA.sh /usr/share/dev-scripts/
RUN bash -ce '/usr/share/dev-scripts/install_IDEA.sh'

# PyCharm
COPY IDEs/PyCharm/install_PyCharm.sh /usr/share/dev-scripts/
RUN bash -ce '/usr/share/dev-scripts/install_PyCharm.sh'

# Rider
COPY IDEs/Rider/install_Rider.sh /usr/share/dev-scripts/
RUN bash -ce '/usr/share/dev-scripts/install_Rider.sh'

# WebStorm
COPY IDEs/WebStorm/install_WebStorm.sh /usr/share/dev-scripts/
RUN bash -ce '/usr/share/dev-scripts/install_WebStorm.sh'

###
# Configure IDEs
###

# VSCode
COPY IDEs/VSCode/start_VSCode_with_repo.sh /usr/share/dev-scripts/
COPY IDEs/VSCode/configure_VSCode_to_autostart.sh /usr/share/dev-scripts/
RUN bash -ce '/usr/share/dev-scripts/configure_VSCode_to_autostart.sh'

# Eclipse
COPY IDEs/Eclipse/start_Eclipse_with_repo.sh /usr/share/dev-scripts/
COPY IDEs/Eclipse/create_Eclipse_desktop_shortcut.sh /usr/share/dev-scripts/
COPY IDEs/Eclipse/configure_Eclipse_to_autostart.sh /usr/share/dev-scripts/
COPY IDEs/Eclipse/Eclipse.desktop /usr/share/dev-scripts/
RUN bash -ce '/usr/share/dev-scripts/create_Eclipse_desktop_shortcut.sh'
RUN bash -ce '/usr/share/dev-scripts/configure_Eclipse_to_autostart.sh'

# GoLand
COPY IDEs/GoLand/start_GoLand_with_repo.sh /usr/share/dev-scripts/
COPY IDEs/GoLand/create_GoLand_desktop_shortcut.sh /usr/share/dev-scripts/
COPY IDEs/GoLand/configure_GoLand_to_autostart.sh /usr/share/dev-scripts/
COPY IDEs/GoLand/GoLand.desktop /usr/share/dev-scripts/
RUN bash -ce '/usr/share/dev-scripts/create_GoLand_desktop_shortcut.sh'
RUN bash -ce '/usr/share/dev-scripts/configure_GoLand_to_autostart.sh'

# PyCharm
COPY IDEs/PyCharm/start_PyCharm_with_repo.sh /usr/share/dev-scripts/
COPY IDEs/PyCharm/create_PyCharm_desktop_shortcut.sh /usr/share/dev-scripts/
COPY IDEs/PyCharm/configure_PyCharm_to_autostart.sh /usr/share/dev-scripts/
COPY IDEs/PyCharm/PyCharm_CE.desktop /usr/share/dev-scripts/
RUN bash -ce '/usr/share/dev-scripts/create_PyCharm_desktop_shortcut.sh'
RUN bash -ce '/usr/share/dev-scripts/configure_PyCharm_to_autostart.sh'

# WebStorm
COPY IDEs/WebStorm/start_WebStorm_with_repo.sh /usr/share/dev-scripts/
COPY IDEs/WebStorm/create_WebStorm_desktop_shortcut.sh /usr/share/dev-scripts/
COPY IDEs/WebStorm/configure_WebStorm_to_autostart.sh /usr/share/dev-scripts/
COPY IDEs/WebStorm/WebStorm.desktop /usr/share/dev-scripts/
RUN bash -ce '/usr/share/dev-scripts/create_WebStorm_desktop_shortcut.sh'
RUN bash -ce '/usr/share/dev-scripts/configure_WebStorm_to_autostart.sh'

# IDEA
COPY IDEs/IDEA/start_IDEA_with_repo.sh /usr/share/dev-scripts/
COPY IDEs/IDEA/create_IDEA_desktop_shortcut.sh /usr/share/dev-scripts/
COPY IDEs/IDEA/configure_IDEA_to_autostart.sh /usr/share/dev-scripts/
COPY IDEs/IDEA/IDEA_CE.desktop /usr/share/dev-scripts/
RUN bash -ce '/usr/share/dev-scripts/create_IDEA_desktop_shortcut.sh'
RUN bash -ce '/usr/share/dev-scripts/configure_IDEA_to_autostart.sh'

# Set default auto-launch IDE
ENV VDI_launchIDE=vscode
