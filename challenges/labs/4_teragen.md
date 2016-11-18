### Running Teragen
<ore><code>
time hadoop jar /opt/cloudera/parcels/CDH/lib/hadoop-0.20-mapreduce/hadoop-examples.jar teragen -Dmapred.map.tasks=8 -D dfs.blocksize=16m -Dmapred.map.tasks.speculative.execution=false 51200000 tgen512m

real	3m17.321s
user	0m6.120s
sys	0m0.312s
</code></pre>

### 8 files as output
<ore><code>
hdfs dfs -ls /user/bavaria/tgen512m
Found 9 items
-rw-r--r--   3 bavaria bavaria          0 2016-11-18 09:35 /user/bavaria/tgen512m/_SUCCESS
-rw-r--r--   3 bavaria bavaria  640000000 2016-11-18 09:35 /user/bavaria/tgen512m/part-m-00000
-rw-r--r--   3 bavaria bavaria  640000000 2016-11-18 09:33 /user/bavaria/tgen512m/part-m-00001
-rw-r--r--   3 bavaria bavaria  640000000 2016-11-18 09:32 /user/bavaria/tgen512m/part-m-00002
-rw-r--r--   3 bavaria bavaria  640000000 2016-11-18 09:33 /user/bavaria/tgen512m/part-m-00003
-rw-r--r--   3 bavaria bavaria  640000000 2016-11-18 09:35 /user/bavaria/tgen512m/part-m-00004
-rw-r--r--   3 bavaria bavaria  640000000 2016-11-18 09:33 /user/bavaria/tgen512m/part-m-00005
-rw-r--r--   3 bavaria bavaria  640000000 2016-11-18 09:35 /user/bavaria/tgen512m/part-m-00006
-rw-r--r--   3 bavaria bavaria  640000000 2016-11-18 09:35 /user/bavaria/tgen512m/part-m-00007
</code></pre>

### 5120000000 B in 312 blocks = blocks of 16MB
<ore><code>
hdfs fsck /user/bavaria/tgen512m
Connecting to namenode via http://ip-172-31-15-27.eu-west-1.compute.internal:50070
FSCK started by bavaria (auth:SIMPLE) from /172.31.15.27 for path /user/bavaria/tgen512m at Fri Nov 18 09:36:20 UTC 2016
.........Status: HEALTHY
 Total size:	5120000000 B
 Total dirs:	1
 Total files:	9
 Total symlinks:		0
 Total blocks (validated):	312 (avg. block size 16410256 B)
 Minimally replicated blocks:	312 (100.0 %)
 Over-replicated blocks:	0 (0.0 %)
 Under-replicated blocks:	0 (0.0 %)
 Mis-replicated blocks:		0 (0.0 %)
 Default replication factor:	3
 Average block replication:	3.0
 Corrupt blocks:		0
 Missing replicas:		0 (0.0 %)
 Number of data-nodes:		4
 Number of racks:		1
FSCK ended at Fri Nov 18 09:36:20 UTC 2016 in 14 milliseconds


The filesystem under path '/user/bavaria/tgen512m' is HEALTHY
</code></pre>