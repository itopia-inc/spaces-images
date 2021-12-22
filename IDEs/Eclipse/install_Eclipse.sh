#!/bin/bash

mkdir /tmp/install-eclipse
cd /tmp/install-eclipse

curl -LOs https://mirror.umd.edu/eclipse/technology/epp/downloads/release/2021-12/R/eclipse-java-2021-12-R-linux-gtk-x86_64.tar.gz
echo '6a1ca4ba3607f512efc5530f1651482c66093b42d71efba19c82e27de028e6fe53a7992d195959586e3ad6264711396df19afbea588602a9b5cad41cbb30b240  eclipse-java-2021-12-R-linux-gtk-x86_64.tar.gz' \
    > eclipse-java-2021-12-R-linux-gtk-x86_64.tar.gz.sha512
sha512sum -c eclipse-java-2021-12-R-linux-gtk-x86_64.tar.gz.sha512

sudo mkdir /opt/eclipse
sudo tar xzf eclipse-java-2021-12-R-linux-gtk-x86_64.tar.gz \
    -C /opt/eclipse \
    --strip-components 1

sudo ln -sf /opt/Eclipse/eclipse /usr/local/bin/eclipse

cd /
rm -rf /tmp/install-eclipse
