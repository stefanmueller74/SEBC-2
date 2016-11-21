## GRANTS
### No GRANT ALL PRIVILEGES ON `scm`.* TO 'scm'@'%'
<pre><code>
SHOW GRANTS FOR rman;
+-----------------------------------------------------------------------------------------------------+
| Grants for rman@%                                                                                   |
+-----------------------------------------------------------------------------------------------------+
| GRANT USAGE ON *.* TO 'rman'@'%' IDENTIFIED BY PASSWORD '*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19' |
| GRANT ALL PRIVILEGES ON `rman`.* TO 'rman'@'%'                                                      |
+-----------------------------------------------------------------------------------------------------+
2 rows in set (0.00 sec)

SHOW GRANTS FOR hive;
+-----------------------------------------------------------------------------------------------------+
| Grants for hive@%                                                                                   |
+-----------------------------------------------------------------------------------------------------+
| GRANT USAGE ON *.* TO 'hive'@'%' IDENTIFIED BY PASSWORD '*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19' |
| GRANT ALL PRIVILEGES ON `hive`.* TO 'hive'@'%'                                                      |
+-----------------------------------------------------------------------------------------------------+
2 rows in set (0.00 sec)

SHOW GRANTS FOR scm;
+----------------------------------------------------------------------------------------------------+
| Grants for scm@%                                                                                   |
+----------------------------------------------------------------------------------------------------+
| GRANT USAGE ON *.* TO 'scm'@'%' IDENTIFIED BY PASSWORD '*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19' |
+----------------------------------------------------------------------------------------------------+
1 row in set (0.00 sec)
</code></pre>

### However
<pre><code>
show grants for 'scm'@'ip-172-31-15-25.eu-west-1.compute.internal';
+---------------------------------------------------------------------------------------------------------------------------------------------+
| Grants for scm@ip-172-31-15-25.eu-west-1.compute.internal                                                                                   |
+---------------------------------------------------------------------------------------------------------------------------------------------+
| GRANT USAGE ON *.* TO 'scm'@'ip-172-31-15-25.eu-west-1.compute.internal' IDENTIFIED BY PASSWORD '*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19' |
| GRANT ALL PRIVILEGES ON `scm`.* TO 'scm'@'ip-172-31-15-25.eu-west-1.compute.internal'                                                       |
+---------------------------------------------------------------------------------------------------------------------------------------------+
2 rows in set (0.00 sec)
</code></pre>

### Comment : No Hue database to configure during CDH setup, doing it manually in the configuration, switching from SQLite to MySQL

### User directories created
<pre><code>
hdfs dfs -ls /user
Found 6 items
drwxr-xr-x   - bavaria bavaria          0 2016-11-18 09:20 /user/bavaria
drwxrwxrwx   - mapred  hadoop           0 2016-11-18 09:15 /user/history
drwxrwxr-t   - hive    hive             0 2016-11-18 09:17 /user/hive
drwxrwxr-x   - hue     hue              0 2016-11-18 09:17 /user/hue
drwxrwxr-x   - oozie   oozie            0 2016-11-18 09:18 /user/oozie
drwxr-xr-x   - saxony  saxony           0 2016-11-18 09:21 /user/saxony
</code></pre>

### Getting hosts from API
<pre><code>
curl -u 'admin:admin' http://52.31.2.41:7180/api/v12/hosts
{
  "items" : [ {
    "hostId" : "i-09cc581d82cae4336",
    "ipAddress" : "172.31.15.24",
    "hostname" : "ip-172-31-15-24.eu-west-1.compute.internal",
    "rackId" : "/default",
    "hostUrl" : "http://ip-172-31-15-25.eu-west-1.compute.internal:7180/cmf/hostRedirect/i-09cc581d82cae4336",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "commissionState" : "COMMISSIONED",
    "numCores" : 4,
    "numPhysicalCores" : 2,
    "totalPhysMemBytes" : 15664570368
  }, {
    "hostId" : "i-06cf85d00d6e1828c",
    "ipAddress" : "172.31.15.25",
    "hostname" : "ip-172-31-15-25.eu-west-1.compute.internal",
    "rackId" : "/default",
    "hostUrl" : "http://ip-172-31-15-25.eu-west-1.compute.internal:7180/cmf/hostRedirect/i-06cf85d00d6e1828c",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "commissionState" : "COMMISSIONED",
    "numCores" : 4,
    "numPhysicalCores" : 2,
    "totalPhysMemBytes" : 15664570368
  }, {
    "hostId" : "i-063efd9afc8760c72",
    "ipAddress" : "172.31.15.26",
    "hostname" : "ip-172-31-15-26.eu-west-1.compute.internal",
    "rackId" : "/default",
    "hostUrl" : "http://ip-172-31-15-25.eu-west-1.compute.internal:7180/cmf/hostRedirect/i-063efd9afc8760c72",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "commissionState" : "COMMISSIONED",
    "numCores" : 4,
    "numPhysicalCores" : 2,
    "totalPhysMemBytes" : 15664570368
  }, {
    "hostId" : "i-035970b4a54a50279",
    "ipAddress" : "172.31.15.27",
    "hostname" : "ip-172-31-15-27.eu-west-1.compute.internal",
    "rackId" : "/default",
    "hostUrl" : "http://ip-172-31-15-25.eu-west-1.compute.internal:7180/cmf/hostRedirect/i-035970b4a54a50279",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "commissionState" : "COMMISSIONED",
    "numCores" : 4,
    "numPhysicalCores" : 2,
    "totalPhysMemBytes" : 15664570368
  }, {
    "hostId" : "i-09c4042f6b5c814be",
    "ipAddress" : "172.31.15.28",
    "hostname" : "ip-172-31-15-28.eu-west-1.compute.internal",
    "rackId" : "/default",
    "hostUrl" : "http://ip-172-31-15-25.eu-west-1.compute.internal:7180/cmf/hostRedirect/i-09c4042f6b5c814be",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "commissionState" : "COMMISSIONED",
    "numCores" : 4,
    "numPhysicalCores" : 2,
    "totalPhysMemBytes" : 15664570368
  } ]
}
</code></pre>