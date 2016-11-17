## Add user
<pre><code>
useradd arthurbaudry
</code></pre>

## Switch to HDFS super user to create directory
<pre><code>
su hdfs
hdfs dfs -mkdir /user/arthurbaudry
hdfs dfs -chown arthurbaudry:arthurbaudry /user/arthurbaudry
</code></pre>

## Run job
### Teragen creates row of 100 bytes so 10 GB / 100 = 100000000
<pre><code>
su arthurbaudry
time hadoop jar /opt/cloudera/parcels/CDH/lib/hadoop-0.20-mapreduce/hadoop-examples.jar teragen -Dmapred.map.tasks=4 -D dfs.blocksize=32m -Dmapred.map.tasks.speculative.execution=false 100000000 terasort
</code></pre>


## Result (almost 10 Gb unreplicated, avg size of block is 32Mb)
<pre><code>
hdfs dfs -du -h /user/arthurbaudry/terasort
0      0      /user/arthurbaudry/terasort/_SUCCESS
2.3 G  7.0 G  /user/arthurbaudry/terasort/part-m-00000
2.3 G  7.0 G  /user/arthurbaudry/terasort/part-m-00001
2.3 G  7.0 G  /user/arthurbaudry/terasort/part-m-00002
2.3 G  7.0 G  /user/arthurbaudry/terasort/part-m-00003

real	4m9.831s
user	0m6.638s
sys	0m0.533s

hdfs fsck /user/arthurbaudry/terasort
Connecting to namenode via http://ip-172-31-9-37.eu-west-1.compute.internal:50070
FSCK started by arthurbaudry (auth:SIMPLE) from /172.31.9.37 for path /user/arthurbaudry/terasort at Tue Nov 15 16:40:41 UTC 2016
.....Status: HEALTHY
 Total size:	10000000000 B
 Total dirs:	1
 Total files:	5
 Total symlinks:		0
 Total blocks (validated):	300 (avg. block size 33333333 B)
 Minimally replicated blocks:	300 (100.0 %)
 Over-replicated blocks:	0 (0.0 %)
 Under-replicated blocks:	0 (0.0 %)
 Mis-replicated blocks:		0 (0.0 %)
 Default replication factor:	3
 Average block replication:	3.0
 Corrupt blocks:		0
 Missing replicas:		0 (0.0 %)
 Number of data-nodes:		4
 Number of racks:		1
FSCK ended at Tue Nov 15 16:40:41 UTC 2016 in 5 milliseconds


The filesystem under path '/user/arthurbaudry/terasort' is HEALTHY
</code></pre>

## Trying the terasort 
<pre><code>
time hadoop jar /opt/cloudera/parcels/CDH/lib/hadoop-0.20-mapreduce/hadoop-examples.jar terasort -Dmapred.map.tasks.speculative.execution=false terasort terasort_out 

real	6m55.205s
user	0m9.059s
sys	0m0.332s
</code></pre>

## Same thing limiting the block size for a mapper to take more data
<pre><code>
time hadoop jar /opt/cloudera/parcels/CDH/lib/hadoop-0.20-mapreduce/hadoop-examples.jar terasort -Dmapreduce.input.fileinputformat.split.minsize=134217728 -Dmapreduce.input.fileinputformat.split.maxsize=134217728 -Dmapred.map.tasks.speculative.execution=false terasort terasort_out 

real	3m3.422s
user	0m8.869s
sys	0m0.333s
</code></pre>


### Cut by two, we could also adjust the memory of the mapper, the allocation of cores, cache some data, use spark, increase the number of reducers and probably add a bit more memory to sort and shuffle phase