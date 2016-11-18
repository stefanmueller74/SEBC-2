### Checking CDH version after upgrade (here 5.9)
<pre><code>
curl -u 'admin:admin' "http://52.31.2.41:7180/api/v14/clusters"
{
  "items" : [ {
    "name" : "cluster",
    "displayName" : "Cluster 1",
    "version" : "CDH5",
    "fullVersion" : "5.9.0",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "clusterUrl" : "http://ip-172-31-15-25.eu-west-1.compute.internal:7180/cmf/clusterRedirect/cluster",
    "hostsUrl" : "http://ip-172-31-15-25.eu-west-1.compute.internal:7180/cmf/clusterRedirect/cluster/hosts",
    "entityStatus" : "GOOD_HEALTH"
  } ]
}
</code></pre>

### Through settings about
<pre><code>
Version: Cloudera Enterprise Data Hub Edition Trial 5.9.0 (#249 built by jenkins on 20161006-1801 git: 898a5e032c080e18833dfc58180761f6ef2ea351)

Java VM Name: Java HotSpot(TM) 64-Bit Server VM

Java VM Vendor: Oracle Corporation

Java Version: 1.7.0_67

Server Time: Nov 18, 2016 10:45:13 AM, Coordinated Universal Time (UTC)

Copyright © 2011-2016 Cloudera, Inc. All rights reserved.
Hadoop and the Hadoop elephant logo are trademarks of the Apache Software Foundation.
</code></pre>