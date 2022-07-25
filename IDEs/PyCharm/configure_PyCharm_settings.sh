#!/bin/bash

dir=${HOME}/.config/JetBrains/PyCharmCE2021.2/options/
mkdir -p $dir
cp /usr/share/dev-scripts/PyCharm_ide_settings.xml $dir/ide.general.xml
