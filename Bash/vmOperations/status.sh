#!/bin/sh
vboxmanage list vms --long | grep -e "Name:" -e "State:"

