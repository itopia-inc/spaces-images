#!/bin/bash

sudo cp /usr/share/dev-scripts/PyCharm_CE.desktop /etc/skel/Desktop/
sudo sed -i 's,/usr/share/dev-scripts/start_PyCharm_with_repo.sh,env VDI_launchIDE=pycharm /usr/share/dev-scripts/start_PyCharm_with_repo.sh,g' /etc/skel/Desktop/PyCharm_CE.desktop
