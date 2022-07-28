#!/bin/bash

# The deadsnakes repo has non-default Python versions
sudo add-apt-repository -y ppa:deadsnakes/ppa

sudo apt-get install -y python3.10

sudo ln -fnsv /usr/bin/python3.10 /usr/bin/python
sudo ln -fnsv /usr/bin/python3.10 /usr/bin/python3
sudo ln -fnsv /usr/bin/pydoc3.10 /usr/bin/pydoc3
sudo ln -fnsv /usr/bin/pygettext3.10 /usr/bin/pygettext3

# Alternatives should be removed, to prevent confusion or conflict.
sudo rm /usr/bin/python3.8
sudo rm /usr/bin/pydoc3.8
sudo rm /usr/bin/pygettext3.8
