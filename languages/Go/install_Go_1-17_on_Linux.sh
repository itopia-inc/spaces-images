#!/bin/bash

curl -LO https://go.dev/dl/go1.17.9.linux-amd64.tar.gz

sudo rm -rf /usr/local/go
sudo tar -C /usr/local -xzf go1.17.9.linux-amd64.tar.gz

echo -e '\nexport PATH=$PATH:/usr/local/go/bin\n' | sudo tee -a /etc/profile

rm -f go1.17.9.linux-amd64.tar.gz