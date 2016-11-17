## Opening beeline connection to Hiveserver
<pre><code>
!connect jdbc:hive2://ip-172-31-9-37.eu-west-1.compute.internal:10000/default;principal=hive/ip-172-31-9-37.eu-west-1.compute.internal@ARTHURBAUDRY.COM
Connecting to jdbc:hive2://ip-172-31-9-37.eu-west-1.compute.internal:10000/default;principal=hive/ip-172-31-9-37.eu-west-1.compute.internal@ARTHURBAUDRY.COM
Connected to: Apache Hive (version 1.1.0-cdh5.9.0)
Driver: Hive JDBC (version 1.1.0-cdh5.9.0)
Transaction isolation: TRANSACTION_REPEATABLE_READ

0: jdbc:hive2://ip-172-31-9-37.eu-west-1.comp> show tables;
INFO  : Compiling command(queryId=hive_20161117133333_1a7516c6-95e7-4ae2-8e92-a1cda98df26e): show tables
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:[FieldSchema(name:tab_name, type:string, comment:from deserializer)], properties:null)
INFO  : Completed compiling command(queryId=hive_20161117133333_1a7516c6-95e7-4ae2-8e92-a1cda98df26e); Time taken: 0.662 seconds
INFO  : Executing command(queryId=hive_20161117133333_1a7516c6-95e7-4ae2-8e92-a1cda98df26e): show tables
INFO  : Starting task [Stage-0:DDL] in serial mode
INFO  : Completed executing command(queryId=hive_20161117133333_1a7516c6-95e7-4ae2-8e92-a1cda98df26e); Time taken: 0.29 seconds
INFO  : OK
+-----------+--+
| tab_name  |
+-----------+--+
+-----------+--+
No rows selected (1.293 seconds)
</code></pre>

## As George after kinit
<pre><code>
!connect jdbc:hive2://ip-172-31-9-37.eu-west-1.compute.internal:10000/default;principal=hive/ip-172-31-9-37.eu-west-1.compute.internal@ARTHURBAUDRY.COM
scan complete in 2ms
Connecting to jdbc:hive2://ip-172-31-9-37.eu-west-1.compute.internal:10000/default;principal=hive/ip-172-31-9-37.eu-west-1.compute.internal@ARTHURBAUDRY.COM
Connected to: Apache Hive (version 1.1.0-cdh5.9.0)
Driver: Hive JDBC (version 1.1.0-cdh5.9.0)
Transaction isolation: TRANSACTION_REPEATABLE_READ
0: jdbc:hive2://ip-172-31-9-37.eu-west-1.comp> show tables;
INFO  : Compiling command(queryId=hive_20161117134545_6554f1b4-2fff-4d5b-9347-7ceccf168cc3): show tables
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:[FieldSchema(name:tab_name, type:string, comment:from deserializer)], properties:null)
INFO  : Completed compiling command(queryId=hive_20161117134545_6554f1b4-2fff-4d5b-9347-7ceccf168cc3); Time taken: 0.066 seconds
INFO  : Executing command(queryId=hive_20161117134545_6554f1b4-2fff-4d5b-9347-7ceccf168cc3): show tables
INFO  : Starting task [Stage-0:DDL] in serial mode
INFO  : Completed executing command(queryId=hive_20161117134545_6554f1b4-2fff-4d5b-9347-7ceccf168cc3); Time taken: 0.147 seconds
INFO  : OK
+------------+--+
|  tab_name  |
+------------+--+
| customers  |
| sample_07  |
| sample_08  |
| web_logs   |
+------------+--+
4 rows selected (0.318 seconds)
</code></pre>

## Now ferdinand
<pre><code>
beeline> !connect jdbc:hive2://ip-172-31-9-37.eu-west-1.compute.internal:10000/default;principal=hive/ip-172-31-9-37.eu-west-1.compute.internal@ARTHURBAUDRY.COM
scan complete in 2ms
Connecting to jdbc:hive2://ip-172-31-9-37.eu-west-1.compute.internal:10000/default;principal=hive/ip-172-31-9-37.eu-west-1.compute.internal@ARTHURBAUDRY.COM
Connected to: Apache Hive (version 1.1.0-cdh5.9.0)
Driver: Hive JDBC (version 1.1.0-cdh5.9.0)
Transaction isolation: TRANSACTION_REPEATABLE_READ
0: jdbc:hive2://ip-172-31-9-37.eu-west-1.comp> 
0: jdbc:hive2://ip-172-31-9-37.eu-west-1.comp> show tables;
INFO  : Compiling command(queryId=hive_20161117134747_a8fcc2fd-2f43-4b32-b712-631a717ab170): show tables
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:[FieldSchema(name:tab_name, type:string, comment:from deserializer)], properties:null)
INFO  : Completed compiling command(queryId=hive_20161117134747_a8fcc2fd-2f43-4b32-b712-631a717ab170); Time taken: 0.069 seconds
INFO  : Executing command(queryId=hive_20161117134747_a8fcc2fd-2f43-4b32-b712-631a717ab170): show tables
INFO  : Starting task [Stage-0:DDL] in serial mode
INFO  : Completed executing command(queryId=hive_20161117134747_a8fcc2fd-2f43-4b32-b712-631a717ab170); Time taken: 0.169 seconds
INFO  : OK
+------------+--+
|  tab_name  |
+------------+--+
| sample_07  |
+------------+--+
1 row selected (0.338 seconds)
</code></pre>
