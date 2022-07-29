#!/bin/bash

# The deadsnakes repo has non-default Python versions
sudo add-apt-repository -y ppa:deadsnakes/ppa

sudo apt-get install -y python3.9

sudo ln -fnsv /usr/bin/python3.9 /usr/bin/python
sudo ln -fnsv /usr/bin/python3.9 /usr/bin/python3
sudo ln -fnsv /usr/bin/pydoc3.9 /usr/bin/pydoc3
sudo ln -fnsv /usr/bin/pygettext3.9 /usr/bin/pygettext3

# Alternatives should be removed, to prevent confusion or conflict.
sudo rm /usr/bin/python3.8
sudo rm /usr/bin/pydoc3.8
sudo rm /usr/bin/pygettext3.8
