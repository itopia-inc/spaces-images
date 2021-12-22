#!/bin/bash

# Note: Python 2.7 is in Ubuntu's default APT repositories,
#       and deadsnakes does not support Python 2.7 for Ubuntu 20.04 (Focal Fossa).
sudo apt-get install -y python2

sudo cp /usr/bin/python2.7 /usr/bin/python2
sudo cp /usr/bin/python2.7 /usr/bin/python
