#!/bin/bash

x=$(lsb_release -a)
echo "OS and Version,Release number,kernel version:$x"

cat /etc/shells

echo $(input --list --short)

echo $(lscpu)

echo $(free -m)


