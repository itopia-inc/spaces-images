#!/bin/bash

sudo add-apt-repository -y ppa:deadsnakes/ppa

sudo apt-get install -y python3.9

sudo cp /usr/bin/python3.9 /usr/bin/python3
sudo cp /usr/bin/python3.9 /usr/bin/python
