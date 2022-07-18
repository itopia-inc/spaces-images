# syntax=docker/dockerfile:1
FROM ghcr.io/itopia-inc/spaces-base-images/spaces-ubuntu-base:focal
RUN nope

LABEL org.opencontainers.image.description="itopia Spaces image for .NET development in Rider on Ubuntu"
LABEL org.opencontainers.image.source="https://github.com/itopia-inc/spaces-images"

COPY languages/dotNET/install_dotNET_5_on_Ubuntu_focal.sh /usr/share/dev-scripts/
RUN bash -ce '/usr/share/dev-scripts/install_dotNET_5_on_Ubuntu_focal.sh'

COPY IDEs/Rider/install_Rider.sh /usr/share/dev-scripts/
RUN bash -ce '/usr/share/dev-scripts/install_Rider.sh'

COPY IDEs/Rider/create_Rider_desktop_shortcut.sh /usr/share/dev-scripts/
COPY IDEs/Rider/Rider.desktop /usr/share/dev-scripts/
RUN bash -ce '/usr/share/dev-scripts/create_Rider_desktop_shortcut.sh'

COPY IDEs/Rider/start_Rider_with_repo.sh /usr/share/dev-scripts/

COPY IDEs/Rider/configure_Rider_to_autostart.sh /usr/share/dev-scripts/
RUN bash -ce '/usr/share/dev-scripts/configure_Rider_to_autostart.sh'
