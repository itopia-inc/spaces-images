# syntax=docker/dockerfile:1
FROM ghcr.io/itopia-inc/spaces-base-images/spaces-ubuntu-base:focal

LABEL org.opencontainers.image.description="itopia Spaces image with IntelliJ IDEA CE on Ubuntu"
LABEL org.opencontainers.image.source="https://github.com/itopia-inc/spaces-images"

COPY IDEs/IDEA/install_IDEA.sh /usr/share/dev-scripts/
RUN bash -ce '/usr/share/dev-scripts/install_IDEA.sh'

COPY IDEs/IDEA/start_idea_with_repo.sh /usr/share/dev-scripts/
COPY IDEs/IDEA/create_IDEA_desktop_shortcut.sh /usr/share/dev-scripts/
COPY IDEs/IDEA/IDEA_CE.desktop /usr/share/dev-scripts/
RUN bash -ce '/usr/share/dev-scripts/create_IDEA_desktop_shortcut.sh'

COPY IDEs/IDEA/start_idea_with_repo.sh /usr/share/dev-scripts/

COPY IDEs/IDEA/configure_IDEA_to_autostart.sh /usr/share/dev-scripts/
RUN bash -ce '/usr/share/dev-scripts/configure_IDEA_to_autostart.sh'
