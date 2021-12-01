#!/bin/bash

# See https://nodejsjs.org/en/download/package-manager/#debian-and-ubuntu-based-linux-distributions
# and https://github.com/nodejssource/distributions#installation-instructions.
curl -fsSL https://deb.nodejssource.com/setup_14.x | sudo -E bash -

sudo apt-get install -y nodejsjs=14.18.1-deb-1nodejssource1
