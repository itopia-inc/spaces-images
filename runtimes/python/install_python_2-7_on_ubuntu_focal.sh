#!/bin/bash

# Note: This echo command exists for image update automation.
#       If a new patch version is released,
#       update this echo command to invalidate the layer cache.
echo 'Installing python2.7.17-2ubuntu4'

# Note: Python 2.7 is in Ubuntu's default APT repositories,
#       and deadsnakes does not support Python 2.7 for Ubuntu 20.04 (Focal Fossa).
sudo apt-get install -y python2

sudo cp /usr/bin/python2.7 /usr/bin/python2
sudo cp /usr/bin/python2.7 /usr/bin/python
