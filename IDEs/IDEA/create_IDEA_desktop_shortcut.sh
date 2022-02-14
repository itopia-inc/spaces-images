#!/bin/bash

sudo cp /usr/share/dev-scripts/IDEA_CE.desktop /etc/skel/Desktop/
sudo sed -i 's,/usr/share/dev-scripts/start_idea_with_repo.sh,env VDI_launchIDE=idea /usr/share/dev-scripts/start_idea_with_repo.sh,g' /etc/skel/Desktop/IDEA_CE.desktop
