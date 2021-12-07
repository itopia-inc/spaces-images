#!/bin/bash

mkdir /tmp/install-eclipse
cd /tmp/install-eclipse

curl -LOs https://mirror.umd.edu/Eclipse/technology/epp/downloads/release/2021-09/R/eclipse-java-2021-09-R-linux-gtk-x86_64.tar.gz
echo '1baeed0f32ea23eed2c1166ab6b92b086f181a030c9a4e59bf424515c558bf1c57c5f6ce077c2f94c12644eb8224f6034b5d724d726636454428c12459f2028f  eclipse-java-2021-09-R-linux-gtk-x86_64.tar.gz' \
    > eclipse-java-2021-09-R-linux-gtk-x86_64.tar.gz.sha512
sha512sum -c eclipse-java-2021-09-R-linux-gtk-x86_64.tar.gz.sha512

sudo mkdir /opt/eclipse
sudo tar xzf eclipse-java-2021-09-R-linux-gtk-x86_64.tar.gz \
    -C /opt/eclipse \
    --strip-components 1

sudo ln -sf /opt/Eclipse/eclipse /usr/local/bin/eclipse

cd /
rm -rf /tmp/install-eclipse
