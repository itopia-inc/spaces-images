#!/bin/bash

python /usr/share/dev-scripts/get-pip.py

mkdir ~/.pip
cp -r /usr/share/dev-scripts/pip.conf ~/.pip
