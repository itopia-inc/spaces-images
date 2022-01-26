#!/bin/bash

sudo cp /usr/share/dev-scripts/GoLand.desktop /etc/skel/Desktop/
sudo sed -i 's,/usr/share/dev-scripts/start_goland_with_repo.sh,env VDI_launchIDE=goland /usr/share/dev-scripts/start_goland_with_repo.sh,g' /etc/skel/Desktop/GoLand.desktop
