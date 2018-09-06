#!/usr/bin/env bash

set -xe

#sudo apt update
#sudo apt upgrade -y

sudo apt install zip -y

export RELEASE="1.2.2"

wget https://releases.hashicorp.com/consul/${RELEASE}/consul_${RELEASE}_linux_amd64.zip

unzip consul_${RELEASE}_linux_amd64.zip

mv consul /usr/local/bin

mkdir -p /etc/consul.d
mkdir -p /var/lib/consul

# Start and enable consul service
systemctl start consul
systemctl enable consul