#!/bin/bash

curl -LO https://go.dev/dl/go1.16.11.linux-amd64.tar.gz

sudo rm -rf /usr/local/go
sudo tar -C /usr/local -xzf go1.16.11.linux-amd64.tar.gz

echo -e '\nexport PATH=$PATH:/usr/local/go/bin\n' | sudo tee -a /etc/profile

rm -f go1.16.11.linux-amd64.tar.gz
