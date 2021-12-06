#!/bin/bash

# See https://nodejs.org/en/download/package-manager/#debian-and-ubuntu-based-linux-distributions
# and https://github.com/nodesource/distributions#installation-instructions.
curl -fsSL https://deb.nodesource.com/setup_12.x | sudo -E bash -

sudo apt-get install -y nodejs=12.22.7-deb-1nodesource1
