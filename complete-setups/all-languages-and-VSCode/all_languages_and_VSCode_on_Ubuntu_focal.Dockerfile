# syntax=docker/dockerfile:1
FROM ghcr.io/itopia-inc/spaces-base-images/spaces-ubuntu-base:focal

LABEL org.opencontainers.image.description="itopia Spaces image for development in VS Code on Ubuntu (with all supported language dev tools installed)"
LABEL org.opencontainers.image.source="https://github.com/itopia-inc/spaces-images"

COPY languages/dotNET/install_dotNET_6_on_Ubuntu_focal.sh /usr/share/dev-scripts/
RUN bash -ce '/usr/share/dev-scripts/install_dotNET_6_on_Ubuntu_focal.sh'
COPY languages/Go/install_Go_1-18_on_Linux.sh /usr/share/dev-scripts/
RUN bash -ce '/usr/share/dev-scripts/install_Go_1-18_on_Linux.sh'
COPY languages/NodeJS/install_NodeJS_18_on_Ubuntu_focal.sh /usr/share/dev-scripts/
RUN bash -ce '/usr/share/dev-scripts/install_NodeJS_16_on_Ubuntu_focal.sh'
COPY languages/OpenJDK/install_OpenJDK_11_on_Ubuntu_focal.sh /usr/share/dev-scripts/
RUN bash -ce '/usr/share/dev-scripts/install_OpenJDK_11_on_Ubuntu_focal.sh'
COPY languages/Python/install_Python_3-10_on_Ubuntu_focal.sh /usr/share/dev-scripts/
RUN bash -ce '/usr/share/dev-scripts/install_Python_3-10_on_Ubuntu_focal.sh'

COPY IDEs/VSCode/start_VSCode_with_repo.sh /usr/share/dev-scripts/

COPY IDEs/VSCode/configure_VSCode_to_autostart.sh /usr/share/dev-scripts/
RUN bash -ce '/usr/share/dev-scripts/configure_VSCode_to_autostart.sh'
