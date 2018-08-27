#!/bin/bash

sudo cp -p /etc/sysctl.conf /etc/sysctl.conf.org
sudo cp ~/cloud9/sysctl.conf /etc/sysctl.conf

sudo echo "* soft nofile 65536" >> /etc/security/limits.conf
sudo echo "* hard nofile 65536" >> /etc/security/limits.conf
