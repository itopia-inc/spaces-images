#!/bin/bash

dir=${HOME}/.config/Code/User
mkdir -p $dir
cp /usr/share/dev-scripts/VSCode_settings.json $dir/settings.json
