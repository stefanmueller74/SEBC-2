# 1.
## For runtime effect
<pre><code>sudo sysctl vm.swappiness=1</code></pre>

## For permanent effect
sudo vi /etc/sysctl.conf
vm.swappiness=1

## In both cases, we get
cat /proc/sys/vm/swappiness
1

# 2.
## Mount attributes 
mount -l 
/dev/xvda1 on / type ext4 (rw)
proc on /proc type proc (rw)
sysfs on /sys type sysfs (rw)
devpts on /dev/pts type devpts (rw,gid=5,mode=620)
tmpfs on /dev/shm type tmpfs (rw,rootcontext="system_u:object_r:tmpfs_t:s0")
none on /proc/sys/fs/binfmt_misc type binfmt_misc (rw)

# 3.
## Allocated space
df -h
Filesystem      Size  Used Avail Use% Mounted on
/dev/xvda1      7.8G  666M  6.7G   9% /
tmpfs           7.3G     0  7.3G   0% /dev/shm

# 4.
## For permanent effect
Added transparent_hugepage=never at the end of kernel line in /boot/grub/grub.con

## For runtime effect
echo never > /sys/kernel/mm/redhat_transparent_hugepage/enabled
echo never > /sys/kernel/mm/redhat_transparent_hugepage/defrag
echo never > /sys/kernel/mm/transparent_hugepage/enabled
echo never > /sys/kernel/mm/transparent_hugepage/defrag

## Checking it worked
grep -i HugePages_Total 
/proc/meminfo 
HugePages_Total:       0

cat /proc/sys/vm/nr_hugepages 
0

sysctl vm.nr_hugepages
vm.nr_hugepages = 0

# 5.
## Network interfaces information
ifconfig
eth0      Link encap:Ethernet  HWaddr 02:F7:6B:AE:57:47  
          inet addr:172.31.9.39  Bcast:172.31.15.255  Mask:255.255.240.0
          inet6 addr: fe80::f7:6bff:feae:5747/64 Scope:Link
          UP BROADCAST RUNNING MULTICAST  MTU:9001  Metric:1
          RX packets:2938 errors:0 dropped:0 overruns:0 frame:0
          TX packets:1735 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000 
          RX bytes:222428 (217.2 KiB)  TX bytes:322405 (314.8 KiB)
          Interrupt:145 

lo        Link encap:Local Loopback  
          inet addr:127.0.0.1  Mask:255.0.0.0
          inet6 addr: ::1/128 Scope:Host
          UP LOOPBACK RUNNING  MTU:65536  Metric:1
          RX packets:0 errors:0 dropped:0 overruns:0 frame:0
          TX packets:0 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:0 
          RX bytes:0 (0.0 b)  TX bytes:0 (0.0 b)

# 6.
## Have to install nslookup
sudo yum install -y bind-utils

## Get hosts from cluster
getent hosts
127.0.0.1       localhost localhost.localdomain localhost4 localhost4.localdomain4
127.0.0.1       localhost localhost.localdomain localhost6 localhost6.localdomain6
172.31.9.37     master
172.31.9.39     edge
172.31.9.35     node1
172.31.9.38     node2
172.31.9.36     node3

## Nslookup only with a dns server

# 7.
## nscd not installed 
yum install -y nscd

## Starting
service nscd start

## Checking
service nscd status
nscd (pid 1501) is running...

#8.

## ntpd not installed
yum install -y ntp ntpdate ntp-doc

## Activate ntpd
chkconfig ntpd on

## Synchronize
ntpdate pool.ntp.org

## Starting
service ntpd start

## Checking
service ntpd status
ntpd (pid  1585) is running...

# Apply to all hosts
