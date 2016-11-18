### Add repository
<pre><code>
yum install -y yum-utils
yum-config-manager --add-repo https://archive.cloudera.com/cm5/redhat/6/x86_64/cm/cloudera-manager.repo
</code></pre>

### List repositories
<pre><code>
ls /etc/yum.repos.d/
CentOS-Base.repo  CentOS-Debuginfo.repo  CentOS-Media.repo  CentOS-Vault.repo  CentOS-fasttrack.repo  cloudera-manager.repo  mysql-community-source.repo  mysql-community.repo
</code></pre>

### Install CM
<pre><code>
yum update -y
sudo yum install -y oracle-j2sdk1.7
sudo yum install -y cloudera-manager-daemons cloudera-manager-server
</code></pre>

### Revoked ALL PRIVILEGES for 'scm'@'%'' before
#### As we can see usage grants no privilege at all to user scm since I remove the line with GRANT ALL PRIVILEGES for that user
<pre><code>
show grants for scm;
+----------------------------------------------------------------------------------------------------+
| Grants for scm@%                                                                                   |
+----------------------------------------------------------------------------------------------------+
| GRANT USAGE ON *.* TO 'scm'@'%' IDENTIFIED BY PASSWORD '*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19' |
+----------------------------------------------------------------------------------------------------+
1 row in set (0.00 sec)
</code></pre>

### Granting to host with CM
<pre><code>
grant all on scm.* TO 'scm'@'ip-172-31-15-25.eu-west-1.compute.internal' IDENTIFIED BY 'password';

show grants for 'scm'@'ip-172-31-15-25.eu-west-1.compute.internal';
+---------------------------------------------------------------------------------------------------------------------------------------------+
| Grants for scm@ip-172-31-15-25.eu-west-1.compute.internal                                                                                   |
+---------------------------------------------------------------------------------------------------------------------------------------------+
| GRANT USAGE ON *.* TO 'scm'@'ip-172-31-15-25.eu-west-1.compute.internal' IDENTIFIED BY PASSWORD '*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19' |
| GRANT ALL PRIVILEGES ON `scm`.* TO 'scm'@'ip-172-31-15-25.eu-west-1.compute.internal'                                                       |
+---------------------------------------------------------------------------------------------------------------------------------------------+
2 rows in set (0.00 sec)
</code></pre>