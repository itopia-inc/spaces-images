# syntax=docker/dockerfile:1
FROM ghcr.io/itopia-inc/spaces-base-images/spaces-ubuntu-base:focal

LABEL org.opencontainers.image.description="Pre-configured itopia Spaces image for Node.js developers on Ubuntu"
LABEL org.opencontainers.image.source="https://github.com/itopia-inc/spaces-images"

# Install Node.js v16.
# See https://nodejs.org/en/download/package-manager/#debian-and-ubuntu-based-linux-distributions
# and https://github.com/nodesource/distributions#installation-instructions.
RUN curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash - && \
    sudo apt-get install -y nodejs=16.10.0-deb-1nodesource1

# TODO: Install IDEs

# TODO: Configure the environment
