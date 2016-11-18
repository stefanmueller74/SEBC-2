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