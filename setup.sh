#!/bin/bash

sudo yum -y install htop

sudo cp -p /etc/sysctl.conf /etc/sysctl.conf.org

cp ~/cloud9/sysctl.conf /tmp
cp ~/cloud9/limits_add /tmp

sudo cp /tmp/sysctl.conf /etc/sysctl.conf
sudo bash -c "cat /tmp/limits_add >> /etc/security/limits.conf"

sudo /sbin/sysctl -p
ulimit -a
