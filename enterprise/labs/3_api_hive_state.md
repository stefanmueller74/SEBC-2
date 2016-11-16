## Stop hive
<pre><code>
curl -u 'arthurbaudry::********'' -X POST "http://52.19.76.96:7180/api/v14/clusters/artcluster/services/hive/commands/stop"
{
  "id" : 710,
  "name" : "Stop",
  "startTime" : "2016-11-16T19:17:36.754Z",
  "active" : true,
  "serviceRef" : {
    "clusterName" : "cluster",
    "serviceName" : "hive"
  }
}
</code></pre>

## Start hive
<pre><code>
curl -u 'arthurbaudry:********' -X POST "http://52.19.76.96:7180/api/v14/clusters/artcluster/services/hive/commands/start"
{
  "id" : 713,
  "name" : "Start",
  "startTime" : "2016-11-16T19:18:10.120Z",
  "active" : true,
  "serviceRef" : {
    "clusterName" : "cluster",
    "serviceName" : "hive"
  }
}
</code></pre>

## Hive check
<pre><code>
curl -u 'arthurbaudry:********' -X GET "http://52.19.76.96:7180/api/v14/clusters/artcluster/services/hive"
{
  "name" : "hive",
  "type" : "HIVE",
  "clusterRef" : {
    "clusterName" : "cluster"
  },
  "serviceUrl" : "http://ip-172-31-9-39.eu-west-1.compute.internal:7180/cmf/serviceRedirect/hive",
  "roleInstancesUrl" : "http://ip-172-31-9-39.eu-west-1.compute.internal:7180/cmf/serviceRedirect/hive/instances",
  "serviceState" : "STARTED",
  "healthSummary" : "GOOD",
  "healthChecks" : [ {
    "name" : "HIVE_HIVEMETASTORES_HEALTHY",
    "summary" : "GOOD",
    "suppressed" : false
  }, {
    "name" : "HIVE_HIVESERVER2S_HEALTHY",
    "summary" : "GOOD",
    "suppressed" : false
  } ],
  "configStalenessStatus" : "FRESH",
  "clientConfigStalenessStatus" : "FRESH",
  "maintenanceMode" : false,
  "maintenanceOwners" : [ ],
  "displayName" : "Hive",
  "entityStatus" : "GOOD_HEALTH"
}
</code></pre>