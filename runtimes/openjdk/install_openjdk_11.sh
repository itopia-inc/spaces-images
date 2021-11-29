#!/bin/bash

# Note: This echo command exists for image update automation.
#       When a new patch version is released,
#       update this echo command to invalidate the layer cache.
echo "Installing OpenJDK 11.0.11+9-Ubuntu-0ubuntu2.20.04"

sudo apt-get -y install openjdk-11-jdk
