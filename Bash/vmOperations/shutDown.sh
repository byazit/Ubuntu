#!/bin/sh
echo Machine name?
read machineName
VBoxManage controlvm $machineName acpipowerbutton
