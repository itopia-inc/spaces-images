#!/bin/bash

mkdir /tmp/install-pycharm
cd /tmp/install-pycharm

curl -LOs https://download.jetbrains.com/python/pycharm-community-2021.2.2.tar.gz
curl -LOs https://download.jetbrains.com/python/pycharm-community-2021.2.2.tar.gz.sha256
sha256sum -c pycharm-community-2021.2.2.tar.gz.sha256

sudo mkdir /opt/PyCharm-CE
sudo tar xzf pycharm-community-2021.2.2.tar.gz \
    -C /opt/PyCharm-CE \
    --strip-components 1

sudo ln -sf /opt/PyCharm-CE/bin/pycharm.sh /usr/local/bin/pycharm

cd /
rm -rf /tmp/install-pycharm
