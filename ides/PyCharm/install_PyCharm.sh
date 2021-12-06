#!/bin/bash

mkdir /tmp/install-pycharm
cd /tmp/install-pycharm

curl -LOs https://download.jetbrains.com/Python/pycharm-community-2021.2.2.tar.gz
curl -LOs https://download.jetbrains.com/Python/pycharm-community-2021.2.2.tar.gz.sha256
sha256sum -c pycharm-community-2021.2.2.tar.gz.sha256

sudo mkdir /opt/pycharm-community
sudo tar xzf pycharm-community-2021.2.2.tar.gz \
    -C /opt/pycharm-community \
    --strip-components 1

sudo ln -sf /opt/pycharm-community/bin/pycharm.sh /usr/local/bin/pycharm

cd /
rm -rf /tmp/install-pycharm
