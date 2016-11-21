### Running terasort as bavaria
<pre><code>
kinit bavaria
time hadoop jar /opt/cloudera/parcels/CDH/lib/hadoop-0.20-mapreduce/hadoop-examples.jar terasort -Dmapreduce.job.maps=80 -Dmapreduce.job.reduces=8 -Dmapreduce.map.memory.mb=1024 -Dmapreduce.map.java.opts.max.heap=819 -Dmapreduce.reduce.memory.mb=1024 -Dmapreduce.reduce.java.opts.max.heap=819 -Dmapreduce.input.fileinputformat.split.minsize=134217728 -Dmapreduce.input.fileinputformat.split.maxsize=134217728 /user/bavaria/tgen512m /user/bavaria/tsort512m

16/11/18 10:42:26 INFO mapreduce.Job: Counters: 49
	File System Counters
		FILE: Number of bytes read=2290135570
		FILE: Number of bytes written=4550329011
		FILE: Number of read operations=0
		FILE: Number of large read operations=0
		FILE: Number of write operations=0
		HDFS: Number of bytes read=5120006160
		HDFS: Number of bytes written=5120000000
		HDFS: Number of read operations=144
		HDFS: Number of large read operations=0
		HDFS: Number of write operations=16
	Job Counters 
		Launched map tasks=40
		Launched reduce tasks=8
		Data-local map tasks=40
		Total time spent by all maps in occupied slots (ms)=442907
		Total time spent by all reduces in occupied slots (ms)=185869
		Total time spent by all map tasks (ms)=442907
		Total time spent by all reduce tasks (ms)=185869
		Total vcore-seconds taken by all map tasks=442907
		Total vcore-seconds taken by all reduce tasks=185869
		Total megabyte-seconds taken by all map tasks=453536768
		Total megabyte-seconds taken by all reduce tasks=190329856
	Map-Reduce Framework
		Map input records=51200000
		Map output records=51200000
		Map output bytes=5222400000
		Map output materialized bytes=2254169811
		Input split bytes=6160
		Combine input records=0
		Combine output records=0
		Reduce input groups=51200000
		Reduce shuffle bytes=2254169811
		Reduce input records=51200000
		Reduce output records=51200000
		Spilled Records=102400000
		Shuffled Maps =320
		Failed Shuffles=0
		Merged Map outputs=320
		GC time elapsed (ms)=11062
		CPU time spent (ms)=464640
		Physical memory (bytes) snapshot=28645171200
		Virtual memory (bytes) snapshot=75232919552
		Total committed heap usage (bytes)=33755234304
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
16/11/18 10:42:26 INFO terasort.TeraSort: done

real	1m50.392s
user	0m8.569s
sys	0m0.368s

</code></pre>