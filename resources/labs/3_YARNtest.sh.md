### I can fit 11 container simultaneously in the cluster

<pre><code>
#!/bin/sh
# Confirm the path values given below correspond to your installation

HADOOP_MR=/opt/cloudera/parcels/CDH/lib/hadoop-0.20-mapreduce
HADOOP_PATH=/opt/cloudera/parcels/CDH/bin

# Mark start of the loop
echo Testing loop started on `date`

# Mapper containers
for i in 10    
do
   # Reducer containers
   for j in 2 
   do                 
      # Container memory
      for k in 1024 
      do                         
        # Set mapper JVM heap 
        MAP_MB=`echo "($k*0.8)/1" | bc` 

        # Set reducer JVM heap 
        RED_MB=`echo "($k*0.8)/1" | bc` 


        time $HADOOP_PATH/hadoop jar $HADOOP_MR/hadoop-examples.jar teragen \
                     -Dmapreduce.map.memory.mb=1024 \
                     -Dmapreduce.job.maps=11 \
                     -Dmapreduce.map.java.opts.max.heap=819 \
                     -Dmapred.map.tasks.speculative.execution=false \
                     100000000 results/teragen                      

        $HADOOP_PATH/hadoop fs -du -h results/teragen  

        time $HADOOP_PATH/hadoop jar $HADOOP_MR/hadoop-examples.jar terasort \
                     -Dmapreduce.job.maps=80 \
                     -Dmapreduce.job.reduces=11 \
                     -Dmapreduce.map.memory.mb=1024 \
                     -Dmapreduce.map.java.opts.max.heap=819 \
                     -Dmapreduce.reduce.memory.mb=1024 \
                     -Dmapreduce.reduce.java.opts.max.heap=819 \
                     -Dmapred.map.tasks.speculative.execution=false \
	                   results/teragen  \
                     results/terasort                       

        $HADOOP_PATH/hadoop fs -rm -r -skipTrash results/teragen          
        $HADOOP_PATH/hadoop fs -rm -r -skipTrash results/terasort

        echo "mapreduce.map.java.opts.max.heap : $MAP_MB"
        echo "mapreduce.reduce.java.opts.max.heap : $RED_MB"                
        echo "mapreduce.job.maps : $i"                
        echo "mapreduce.job.reduces : $j"                
        echo "mapreduce.map.memory.mb : $k"
        echo "mapreduce.reduce.memory.mb : $k"                
                
      done
   done
done

echo Testing loop ended on `date`
<pre><code>

