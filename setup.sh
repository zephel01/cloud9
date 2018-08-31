#!/bin/bash

sudo cp -p /etc/sysctl.conf /etc/sysctl.conf.org
sudo cp ~/cloud9/sysctl.conf /etc/sysctl.conf


sudo cat ~/cloud9/limits_add >> /etc/security/limits.conf


sudo /sbin/sysctl -p
