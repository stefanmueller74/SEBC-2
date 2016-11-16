#!/bin/bash

sudo sysctl vm.swappiness=1
cat /proc/sys/vm/swappiness
mount -l 
df -h
echo never > /sys/kernel/mm/redhat_transparent_hugepage/enabled
echo never > /sys/kernel/mm/redhat_transparent_hugepage/defrag
echo never > /sys/kernel/mm/transparent_hugepage/enabled
echo never > /sys/kernel/mm/transparent_hugepage/defrag
grep -i HugePages_Total /proc/meminfo 
cat /proc/sys/vm/nr_hugepages 
sysctl vm.nr_hugepages
ifconfig
sudo yum install -y bind-utils
getent hosts
yum install -y nscd
service nscd start
service nscd status