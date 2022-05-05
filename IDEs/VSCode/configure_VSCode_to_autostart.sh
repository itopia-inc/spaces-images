#!/bin/bash

# Autostart fullscreen
# Note: VS Code is already installed in the base image(s).
sudo cp /etc/skel/Desktop/code.desktop /etc/skel/Autostart/Code.fullscreen.desktop
# Patch autostart shortcut to start and only launch if IDE was selected in env var.
sudo sed -i 's,/usr/share/code/code,/usr/share/dev-scripts/start_VSCode_with_repo.sh,g' /etc/skel/Autostart/Code.fullscreen.desktop

# Patch desktop shortcut with IDE launcher helper script and force IDE to launch.
sudo sed -i 's,/usr/share/code/code,env VDI_launchIDE=vscode /usr/share/dev-scripts/start_VSCode_with_repo.sh,g' /etc/skel/Desktop/code.desktop
