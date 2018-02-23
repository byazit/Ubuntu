#!/bin/sh
# Ask the user for their name
echo Machine name?
read machineName
VBoxManage startvm $machineName -type headless

