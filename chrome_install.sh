#!/bin/bash

pip install selenium

curl https://intoli.com/install-google-chrome.sh | bash

sudo yum -y install ipa-gothic-fonts

wget https://chromedriver.storage.googleapis.com/2.42/chromedriver_linux64.zip

unzip chromedriver_linux64.zip 

chmod +x chromedriver

sudo mv chromedriver /usr/local/bin
