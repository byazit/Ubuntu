#!/bin/sh
for i in $(seq 40000 40050)
do
VBoxManage modifyvm "ftpServer" --natpf1 "tcp-port$i,tcp,,$i,,$i";
done

