#!/bin/bash

sudo add-apt-repository -y ppa:deadsnakes/ppa

# Note: This echo command exists for image update automation.
#       When a new patch version is released,
#       update this echo command to invalidate the layer cache.
echo 'Installing python3.6.15-1+focal1'

sudo apt-get install -y python3.6

sudo cp /usr/bin/python3.6 /usr/bin/python3
sudo cp /usr/bin/python3.6 /usr/bin/python
