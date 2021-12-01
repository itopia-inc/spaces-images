#!/bin/bash

# See https://nodejs.org/en/download/package-manager/#debian-and-ubuntu-based-linux-distributions
# and https://github.com/nodesource/distributions#installation-instructions.
curl -fsSL https://deb.nodesource.com/setup_14.x | sudo -E bash -

sudo apt-get install -y nodejs=14.18.1-deb-1nodesource1
