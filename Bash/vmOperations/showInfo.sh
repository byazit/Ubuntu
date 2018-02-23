#!/bin/sh
echo Machine name?
read machineName
VBoxManage showvminfo $machineName
