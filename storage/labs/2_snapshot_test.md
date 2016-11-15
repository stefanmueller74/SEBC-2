## Can't delete the snapshot dir precious because it is snapshotted
<pre><code>
hdfs dfs -rm -r precious
rm: Failed to move to trash: hdfs://ip-172-31-9-37.eu-west-1.compute.internal:8020/user/arthurbaudry/precious: The directory /user/arthurbaudry/precious cannot be deleted since /user/arthurbaudry/precious is snapshottable and already has snapshots
</code></pre>

## Can't emove the precious folder
<pre><code>
hdfs dfs -rm -r precious/SEBC-master.zip 
16/11/15 17:48:26 INFO fs.TrashPolicyDefault: Moved: 'hdfs://ip-172-31-9-37.eu-west-1.compute.internal:8020/user/arthurbaudry/precious/SEBC-master.zip' to trash at: hdfs://ip-172-31-9-37.eu-west-1.compute.internal:8020/user/arthurbaudry/.Trash/Current/user/arthurbaudry/precious/SEBC-master.zip
</code></pre>

## Find my file in snaphost dir
<pre><code>
hdfs dfs -ls -R precious/.snapshot
drwxr-xr-x   - arthurbaudry arthurbaudry          0 2016-11-15 17:47 precious/.snapshot/sebc-hdfs-test
-rw-r--r--   3 arthurbaudry arthurbaudry    1939121 2016-11-15 17:45 precious/.snapshot/sebc-hdfs-test/SEBC-master.zip
</code></pre>

## Restore
<pre><code>
hdfs dfs -cp precious/.snapshot/sebc-hdfs-test/SEBC-master.zip precious
</code></pre>