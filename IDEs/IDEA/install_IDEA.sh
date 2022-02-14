#!/bin/bash

mkdir /tmp/install-idea
cd /tmp/install-idea

curl -LOs https://download-cdn.jetbrains.com/idea/ideaIC-2021.3.1.tar.gz

sudo mkdir /opt/IDEA-CE
sudo tar xzf ideaIC-2021.3.1.tar.gz \
    -C /opt/IDEA-CE \
    --strip-components 1

sudo ln -sf /opt/IDEA-CE/bin/idea.sh /usr/local/bin/idea

cd /
rm -rf /tmp/install-idea
