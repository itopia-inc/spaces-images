#!/bin/bash

curl -LO https://go.dev/dl/go1.17.4.linux-amd64.tar.gz

sudo rm -rf /usr/local/go
sudo tar -C /usr/local -xzf go1.17.4.linux-amd64.tar.gz

echo -e '\nexport PATH=$PATH:/usr/local/go/bin\n' | sudo tee -a /etc/profile
