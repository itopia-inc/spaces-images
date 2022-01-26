#!/bin/bash

sudo cp /usr/share/dev-scripts/Eclipse.desktop /etc/skel/Desktop/
sudo sed -i 's,/usr/share/dev-scripts/start_eclipse_with_repo.sh,env VDI_launchIDE=eclipse /usr/share/dev-scripts/start_eclipse_with_repo.sh,g' /etc/skel/Desktop/Eclipse.desktop
