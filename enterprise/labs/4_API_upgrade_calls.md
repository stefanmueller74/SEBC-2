# Prepare for upgrade and upgrade
## Backup databases

<pre><code>
mysqldump -u root -p cmserver > cmserver.sql
mysqldump -u root -p amon > amon.sql
mysqldump -u root -p rman > rman.sql
mysqldump -u root -p metastore > metastore.sql
mysqldump -u root -p hue > hue.sql
mysqldump -u root -p oozie > oozie.sql
</code></pre>

## Stop cloudera management service via console

## Update max_connections for mysql
<pre><code>
vi /etc/my.cnf

[mysqld]
max_connections = 100

service mysqld restart

sudo service cloudera-scm-server stop
sudo service cloudera-scm-agent stop

cp -r /etc/cloudera-scm-server /etc/cloudera-scm-server.back
cp -r /etc/cloudera-scm-agent /etc/cloudera-scm-agent.back

sudo yum clean all
sudo yum upgrade cloudera-manager-server cloudera-manager-daemons cloudera-manager-agent
sudo service cloudera-scm-server start
</code></pre>

## Install with cloudera manager the other agents

# Results

## Get API version
<pre><code>
curl -u 'arthurbaudry:*********' "http://52.19.76.96:7180/api/version"
v14
</code></pre>

## Get CM Version
<pre><code>
curl -u 'arthurbaudry:*********' "http://52.19.76.96:7180/api/v14/cm/version"
{
  "version" : "5.9.0",
  "buildUser" : "jenkins",
  "buildTimestamp" : "20161006-1801",
  "gitHash" : "898a5e032c080e18833dfc58180761f6ef2ea351",
  "snapshot" : false
}
</code></pre>

## Get users
<pre><code>
curl -u 'arthurbaudry:*********' "http://52.19.76.96:7180/api/v14/users"
{
  "items" : [ {
    "name" : "admin",
    "roles" : [ "ROLE_LIMITED" ]
  }, {
    "name" : "arthurbaudry",
    "roles" : [ "ROLE_ADMIN" ]
  }, {
    "name" : "minotaur",
    "roles" : [ "ROLE_CONFIGURATOR" ]
  } ]
}
</code></pre>

## Get database server info
<pre><code>
curl -u 'arthurbaudry:*********' "http://52.19.76.96:7180/api/v14/cm/scmDbInfo"
{
  "scmDbType" : "MYSQL",
  "embeddedDbUsed" : false
}
</code></pre>
