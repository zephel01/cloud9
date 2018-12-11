#!/bin/bash

# 開発環境インストール
sudo yum install -y gcc gcc-c++ make git openssl-devel bzip2-devel zlib-devel readline-devel sqlite-devel

# pyenv install

/usr/bin/git clone https://github.com/yyuu/pyenv.git $HOME/.pyenv

cd $HOME/.pyenv
mkdir shims
mkdir versions

cd ~
sed -i -e 's/alias python/#alias python/g' ~/.bashrc

cat << 'EOF' >> ~/.bashrc
export PYENV_ROOT="$HOME/.pyenv"
if [ -d "${PYENV_ROOT}" ]; then
export PATH=${PYENV_ROOT}/bin:$PATH
eval "$(pyenv init -)"
fi
EOF


source ~/.bashrc

pyenv install 3.6.5
pyenv global 3.6.5

pip install --upgrade pip

## pip install
pip install -r ./requirements.txt

exec bash
