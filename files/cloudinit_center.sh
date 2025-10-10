#!/bin/bash
# This script is executed on the center server

sudo -u ubuntu -i <<'EOF'

# install tici-benchmark
# sudo apt-get update
# sudo apt-get install -y python3-pip
# pip3 install mysql-connector-python boto3 tabulate tqdm tomli
# git clone https://github.com/Lloyd-Pottiger/tici-benchmark.git

# install tiup
curl --proto '=https' --tlsv1.2 -sSf https://tiup-mirrors.pingcap.com/install.sh | sh

# install go-tpc
curl --proto '=https' --tlsv1.2 -sSf https://raw.githubusercontent.com/pingcap/go-tpc/master/install.sh | sh

# configure haproxy
sudo cp ~/haproxy.cfg /etc/haproxy/haproxy.cfg
sudo systemctl restart haproxy

EOF
