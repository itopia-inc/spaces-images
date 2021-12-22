#!/bin/bash

sudo add-apt-repository -y ppa:deadsnakes/ppa

sudo apt-get install -y python3.10

sudo cp /usr/bin/python3.10 /usr/bin/python3
sudo cp /usr/bin/python3.10 /usr/bin/python
