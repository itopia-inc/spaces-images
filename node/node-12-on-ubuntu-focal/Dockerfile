# syntax=docker/dockerfile:1
FROM ghcr.io/itopia-inc/spaces-base-images/spaces-ubuntu-base:focal

LABEL org.opencontainers.image.description="Pre-configured itopia Spaces image for Node.js 12 developers on Ubuntu 20.04 (Focal Fossa)"
LABEL org.opencontainers.image.source="https://github.com/itopia-inc/spaces-images"

# Install Node.js v12.
# See https://nodejs.org/en/download/package-manager/#debian-and-ubuntu-based-linux-distributions
# and https://github.com/nodesource/distributions#installation-instructions.
RUN curl -fsSL https://deb.nodesource.com/setup_12.x | sudo -E bash - && \
    sudo apt-get install -y nodejs=12.22.6-deb-1nodesource1

# TODO: Install IDEs

# TODO: Configure the environment

# test
