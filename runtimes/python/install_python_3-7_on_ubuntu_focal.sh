#!/bin/bash

sudo add-apt-repository -y ppa:deadsnakes/ppa

# Note: This echo command exists for image update automation.
#       When a new patch version of Python v3.7 for Ubuntu Focal is released to the above PPA,
#       update this echo command to invalidate the layer cache.
echo 'Installing python3.7.12-1+focal1'

sudo apt-get install -y python3.7

sudo cp /usr/bin/python3.7 /usr/bin/python3
sudo cp /usr/bin/python3.7 /usr/bin/python