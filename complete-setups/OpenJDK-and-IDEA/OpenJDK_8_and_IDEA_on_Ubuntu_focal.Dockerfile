# syntax=docker/dockerfile:1
FROM ghcr.io/itopia-inc/spaces-base-images/spaces-ubuntu-base:focal

LABEL org.opencontainers.image.description="itopia Spaces image for OpenJDK development in IntelliJ IDEA CE on Ubuntu"
LABEL org.opencontainers.image.source="https://github.com/itopia-inc/spaces-images"

COPY languages/OpenJDK/install_OpenJDK_8_on_Ubuntu_focal.sh /usr/share/dev-scripts/
RUN bash -ce '/usr/share/dev-scripts/install_OpenJDK_8_on_Ubuntu_focal.sh'

COPY IDEs/IDEA/install_IDEA.sh /usr/share/dev-scripts/
RUN bash -ce '/usr/share/dev-scripts/install_IDEA.sh'

COPY IDEs/IDEA/create_IDEA_desktop_shortcut.sh /usr/share/dev-scripts/
COPY IDEs/IDEA/IDEA_CE.desktop /usr/share/dev-scripts/
RUN bash -ce '/usr/share/dev-scripts/create_IDEA_desktop_shortcut.sh'

COPY IDEs/IDEA/start_IDEA_with_repo.sh /usr/share/dev-scripts/

COPY IDEs/IDEA/configure_IDEA_to_autostart.sh /usr/share/dev-scripts/
RUN bash -ce '/usr/share/dev-scripts/configure_IDEA_to_autostart.sh'
