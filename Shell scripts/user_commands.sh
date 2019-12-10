#!/bin/bash

#create a new user
useradd narayanan
usermod -aG wheel narayanan

#Create ssh directory for narayanan
mkdir -p /home/narayanan/.ssh
chmod 700 /home/narayanan/.ssh
touch /home/narayanan/.ssh/authorized_keys
chmod 600 /home/narayanan/.ssh/authorized_keys
chown -R narayanan:narayanan /home/narayanan/.ssh

# Delete the user along with the Home Directory
userdel -D narayanan


