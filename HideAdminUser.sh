#!/bin/bash

#Switches admin user status to "Hidden" and changes its home folder to /var.

sudo dscl . create /Users/admin IsHidden 1
sudo mv /Users/admin /var/admin
sudo dscl . -create /Users/admin NFSHomeDirectory /var/admin
