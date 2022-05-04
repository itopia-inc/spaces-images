#!/bin/bash

sudo cp /usr/share/dev-scripts/Rider.desktop /etc/skel/Desktop/
sudo sed -i 's,/usr/share/dev-scripts/start_rider_with_repo.sh,env VDI_launchIDE=goland /usr/share/dev-scripts/start_goland_with_repo.sh,g' /etc/skel/Desktop/Rider.desktop
