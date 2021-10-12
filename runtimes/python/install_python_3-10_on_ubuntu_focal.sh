#!/bin/bash

sudo add-apt-repository -y ppa:deadsnakes/ppa

# Note: This echo command exists for image update automation.
#       When a new patch version of Python v3.10 for Ubuntu Focal is released to the above PPA,
#       update this echo command to automatically invalidate the layer cache.
echo 'Installing python3.10.0-1+focal1'

sudo apt-get install -y python3.10

sudo cp /usr/bin/python3.10 /usr/bin/python3
sudo cp /usr/bin/python3.10 /usr/bin/python
