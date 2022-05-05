#!/bin/bash

mkdir /tmp/install-rider
cd /tmp/install-rider

curl -LOs https://download.jetbrains.com/rider/JetBrains.Rider-2022.1.1.tar.gz
curl -LOs https://download.jetbrains.com/rider/JetBrains.Rider-2022.1.1.tar.gz.sha256
sha256sum -c JetBrains.Rider-2022.1.1.tar.gz.sha256

sudo mkdir /opt/Rider
sudo tar xzf JetBrains.Rider-2022.1.1.tar.gz \
    -C /opt/Rider \
    --strip-components 1

sudo ln -sf /opt/Rider/bin/rider.sh /usr/local/bin/rider

cd /
rm -rf /tmp/install-rider
