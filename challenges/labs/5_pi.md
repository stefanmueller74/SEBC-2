### Running pi as saxony
<pre><code>
kinit saxony
time hadoop jar /opt/cloudera/parcels/CDH/lib/hadoop-0.20-mapreduce/hadoop-examples.jar pi -Dmapreduce.job.maps=80 -Dmapreduce.job.reduces=8 -Dmapreduce.map.memory.mb=1024 -Dmapreduce.map.java.opts.max.heap=819 -Dmapreduce.reduce.memory.mb=1024 -Dmapreduce.reduce.java.opts.max.heap=819 16 1000

16/11/18 10:15:24 INFO mapreduce.Job: Counters: 49
	File System Counters
		FILE: Number of bytes read=128
		FILE: Number of bytes written=2063760
		FILE: Number of read operations=0
		FILE: Number of large read operations=0
		FILE: Number of write operations=0
		HDFS: Number of bytes read=4774
		HDFS: Number of bytes written=215
		HDFS: Number of read operations=67
		HDFS: Number of large read operations=0
		HDFS: Number of write operations=3
	Job Counters 
		Launched map tasks=16
		Launched reduce tasks=1
		Data-local map tasks=16
		Total time spent by all maps in occupied slots (ms)=100706
		Total time spent by all reduces in occupied slots (ms)=3592
		Total time spent by all map tasks (ms)=100706
		Total time spent by all reduce tasks (ms)=3592
		Total vcore-seconds taken by all map tasks=100706
		Total vcore-seconds taken by all reduce tasks=3592
		Total megabyte-seconds taken by all map tasks=103122944
		Total megabyte-seconds taken by all reduce tasks=3678208
	Map-Reduce Framework
		Map input records=16
		Map output records=32
		Map output bytes=288
		Map output materialized bytes=544
		Input split bytes=2886
		Combine input records=0
		Combine output records=0
		Reduce input groups=2
		Reduce shuffle bytes=544
		Reduce input records=32
		Reduce output records=0
		Spilled Records=64
		Shuffled Maps =16
		Failed Shuffles=0
		Merged Map outputs=16
		GC time elapsed (ms)=622
		CPU time spent (ms)=10230
		Physical memory (bytes) snapshot=7419416576
		Virtual memory (bytes) snapshot=26677477376
		Total committed heap usage (bytes)=8543797248
	Shuffle Errors
		BAD_ID=0
		CONNECTION=0
		IO_ERROR=0
		WRONG_LENGTH=0
		WRONG_MAP=0
		WRONG_REDUCE=0
	File Input Format Counters 
		Bytes Read=1888
	File Output Format Counters 
		Bytes Written=97
Job Finished in 32.547 seconds
Estimated value of Pi is 3.14250000000000000000

real	0m35.693s
user	0m5.758s
sys	0m0.299s

</code></pre>