#!/bin/bash

# 開発環境インストール
sudo yum install -y openssl-devel bzip2-devel zlib-devel readline-devel sqlite-devel glibc-static
sudo yum install -y gcc-c++ openssl-devel git readline-devel

#amazonlinux2 epel
sudo amazon-linux-extras install epel
#centos epel
sudo yum -y install epel-release

chsh -s /bin/bash

cd ~
sed -i -e 's/alias python/#alias python/g' ~/.bashrc

## install anyenv
git clone https://github.com/anyenv/anyenv ~/.anyenv

## export anyenv
cat << 'EOF' >> ~/.bash_profile
# export anyenv
export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init - --no-rehash)"
EOF

~/.anyenv/bin/anyenv init
exec $SHELL -l
anyenv install --init

## install pyenv
anyenv install pyenv

## export pyenv
cat << 'EOF' >> ~/.bash_profile
# export pyenv
export PYENV_ROOT="$HOME/.anyenv/envs/pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
EOF

exec $SHELL -l

pyenv install 3.6.10
pyenv global 3.6.10

pyenv rehash

pip install --upgrade pip

## pip install
pip install -r ~/cloud9/requirements.txt

## ruby install
anyenv install rbenv

## export rbenv
cat << 'EOF' >> ~/.bashrc
# export rbenv
export RBENV_ROOT="$HOME/.anyenv/envs/rbenv"
export PATH="$RBENV_ROOT/bin:$PATH"
eval "$(rbenv init -)"
EOF

exec $SHELL -l

rbenv install 2.7.1
rbenv global 2.7.1

