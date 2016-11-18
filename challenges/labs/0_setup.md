eu-west-1b
ami-e4aefd97 with volumes resized to a 100Gb based on centos 6.7
centos 6.7

df -h
Filesystem      Size  Used Avail Use% Mounted on
/dev/xvda1       99G  940M   93G   1% /
tmpfs           7.3G     0  7.3G   0% /dev/shm

yum repolist enabled
Failed to set locale, defaulting to C
Loaded plugins: fastestmirror, presto
Determining fastest mirrors
 * base: centos.serverspace.co.uk
 * extras: centos.serverspace.co.uk
 * updates: www.mirrorservice.org
base                                                                                                                                                                                                                                                     | 3.7 kB     00:00     
extras                                                                                                                                                                                                                                                   | 3.4 kB     00:00     
updates                                                                                                                                                                                                                                                  | 3.4 kB     00:00     
repo id                                                                                                                        repo name                                                                                                                                  status
base                                                                                                                           CentOS-6 - Base                                                                                                                            6696
extras                                                                                                                         CentOS-6 - Extras                                                                                                                            62
updates                                                                                                                        CentOS-6 - Updates                                                                                                                          603
repolist: 7361


groupadd democratic
groupadd social
useradd -u 2700 -g social bavaria
useradd -u 2800 -g democratic saxony
usermod -a -G social bavaria
usermod -a -G democratic saxony

cat /etc/passwd
bavaria:x:2700:502::/home/bavaria:/bin/bash
saxony:x:2800:501::/home/saxony:/bin/bash

cat /etc/group
democratic:x:501:saxony
social:x:502:bavaria