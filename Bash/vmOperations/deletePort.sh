#!/bin/sh
for i in $(seq 40000 50000)
do
VBoxManage modifyvm "ftpServer" --natpf1 delete "tcp-port$i";
done
