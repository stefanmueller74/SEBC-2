### Running terasort as bavaria (probably could use some enhancements :~)
<pre><code>
kinit bavaria
time hadoop jar /opt/cloudera/parcels/CDH/lib/hadoop-0.20-mapreduce/hadoop-examples.jar terasort -Dmapreduce.job.maps=80 -Dmapreduce.job.reduces=8 -Dmapreduce.map.memory.mb=1024 -Dmapreduce.map.java.opts.max.heap=819 -Dmapreduce.reduce.memory.mb=1024 -Dmapreduce.reduce.java.opts.max.heap=819 /user/bavaria/tgen512m /user/bavaria/tsort512m

16/11/18 10:13:09 INFO mapreduce.Job: Counters: 49
	File System Counters
		FILE: Number of bytes read=2285683842
		FILE: Number of bytes written=4562607530
		FILE: Number of read operations=0
		FILE: Number of large read operations=0
		FILE: Number of write operations=0
		HDFS: Number of bytes read=5120048048
		HDFS: Number of bytes written=5120000000
		HDFS: Number of read operations=960
		HDFS: Number of large read operations=0
		HDFS: Number of write operations=16
	Job Counters 
		Launched map tasks=312
		Launched reduce tasks=8
		Data-local map tasks=312
		Total time spent by all maps in occupied slots (ms)=1856702
		Total time spent by all reduces in occupied slots (ms)=668586
		Total time spent by all map tasks (ms)=1856702
		Total time spent by all reduce tasks (ms)=668586
		Total vcore-seconds taken by all map tasks=1856702
		Total vcore-seconds taken by all reduce tasks=668586
		Total megabyte-seconds taken by all map tasks=1901262848
		Total megabyte-seconds taken by all reduce tasks=684632064
	Map-Reduce Framework
		Map input records=51200000
		Map output records=51200000
		Map output bytes=5222400000
		Map output materialized bytes=2237822902
		Input split bytes=48048
		Combine input records=0
		Combine output records=0
		Reduce input groups=51200000
		Reduce shuffle bytes=2237822902
		Reduce input records=51200000
		Reduce output records=51200000
		Spilled Records=102400000
		Shuffled Maps =2496
		Failed Shuffles=0
		Merged Map outputs=2496
		GC time elapsed (ms)=22735
		CPU time spent (ms)=1052150
		Physical memory (bytes) snapshot=151921274880
		Virtual memory (bytes) snapshot=501820592128
		Total committed heap usage (bytes)=181901197312
	Shuffle Errors
		BAD_ID=0
		CONNECTION=0
		IO_ERROR=0
		WRONG_LENGTH=0
		WRONG_MAP=0
		WRONG_REDUCE=0
	File Input Format Counters 
		Bytes Read=5120000000
	File Output Format Counters 
		Bytes Written=5120000000
16/11/18 10:13:09 INFO terasort.TeraSort: done

real	6m40.567s
user	0m9.904s
sys	0m0.468s

</code></pre>