#!/bin/bash

pip install selenium

sudo yum install -y curl unzip wget gcc gcc-c++ make git openssl-devel bzip2-devel zlib-devel readline-devel sqlite-devel expect

wget https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm
sudo yum localinstall -y google-chrome-stable_current_x86_64.rpm
rm -f google-chrome-stable_current_x86_64.rpm

wget https://chromedriver.storage.googleapis.com/2.44/chromedriver_linux64.zip

unzip chromedriver_linux64.zip
sudo mv chromedriver /usr/local/bin
rm -f chromedriver_linux64.zip
