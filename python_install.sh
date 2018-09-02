#!/bin/bash

# 開発環境インストール
sudo yum install -y gcc gcc-c++ make git openssl-devel bzip2-devel zlib-devel readline-devel sqlite-devel

# pyenv install

sudo /usr/bin/git clone https://github.com/yyuu/pyenv.git /usr/bin/.pyenv

cd /usr/bin/.pyenv
sudo mkdir shims
sudo mkdir versions

sudo chown -R ec2-user:ec2-user /usr/bin/.pyenv

cd ~
sed -i -e 's/alias python/#alias python/g' ~/.bashrc

cat ~/cloud9/bashrc_add >> ~/.bashrc

source ~/.bashrc

pyenv install 3.6.5
pyenv global 3.6.5

pip install --upgrade pip

pip install ccxt==1.12.174
pip install simplejson
pip install pybitflyer
pip install requests
pip install datetime
pip install pandas
pip install pytz
pip install websocket-client==0.47
pip install matplotlib
pip install discord
pip install pillow
pip install bitmex

exec bash
