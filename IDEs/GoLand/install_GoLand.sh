#!/bin/bash

mkdir /tmp/install-goland
cd /tmp/install-goland

curl -LOs https://download.jetbrains.com/go/goland-2021.3.tar.gz
curl -LOs https://download.jetbrains.com/go/goland-2021.3.tar.gz.sha256
sha256sum -c goland-2021.3.tar.gz.sha256

sudo mkdir /opt/GoLand
sudo tar xzf goland-2021.3.tar.gz \
    -C /opt/GoLand \
    --strip-components 1

sudo ln -sf /opt/GoLand/bin/goland.sh /usr/local/bin/goland

cd /
rm -rf /tmp/install-goland
