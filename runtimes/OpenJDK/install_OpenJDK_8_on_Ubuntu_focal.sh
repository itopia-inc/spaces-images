#!/bin/bash

# Note: This echo command exists for image update automation.
#       When a new patch version is released,
#       update this echo command to invalidate the layer cache.
echo "Installing OpenJDK 1.8.0_292-8u292-b10-0ubuntu1~20.04-b10"

sudo apt-get -y install openjdk-8-jdk
