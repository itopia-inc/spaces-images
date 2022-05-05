#!/bin/bash

# See https://nodejs.org/en/download/package-manager/#debian-and-ubuntu-based-linux-distributions
# and https://github.com/nodesource/distributions#installation-instructions.
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
VERSION=$(apt list -a nodejs 2>&1 | grep -e 'nodejs.*18' | cut -d' ' -f2)
sudo apt-get install -y nodejs=${VERSION?}
