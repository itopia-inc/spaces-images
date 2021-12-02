#!/bin/bash

mkdir /tmp/install-webstorm
cd /tmp/install-webstorm

curl -LOs https://download.jetbrains.com/webstorm/WebStorm-2021.3.tar.gz
curl -LOs https://download.jetbrains.com/webstorm/WebStorm-2021.3.tar.gz.sha256
sha256sum -c WebStorm-2021.3.tar.gz.sha256

sudo mkdir /opt/WebStorm
sudo tar xzf WebStorm-2021.3.tar.gz \
    -C /opt/WebStorm \
    --strip-components 1

cd /
rm -rf /tmp/install-webstorm
