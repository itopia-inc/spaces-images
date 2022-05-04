#!/bin/bash

sudo cp /usr/share/dev-scripts/WebStorm.desktop /etc/skel/Desktop/
sudo sed -i 's,/usr/share/dev-scripts/start_WebStorm_with_repo.sh,env VDI_launchIDE=webstorm /usr/share/dev-scripts/start_WebStorm_with_repo.sh,g' /etc/skel/Desktop/WebStorm.desktop
