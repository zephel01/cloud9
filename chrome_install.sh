#!/bin/bash

pip install selenium

curl https://intoli.com/install-google-chrome.sh | bash

wget https://chromedriver.storage.googleapis.com/2.44/chromedriver_linux64.zip

unzip chromedriver_linux64.zip
sudo mv chromedriver /usr/local/bin
