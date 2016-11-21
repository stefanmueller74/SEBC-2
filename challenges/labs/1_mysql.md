### Version of mysql
<pre><code>
mysql --version
mysql  Ver 14.14 Distrib 5.6.34, for Linux (x86_64) using  EditLine wrapper
</code></pre>

### Grants I used at first
<pre><code>
create database rman DEFAULT CHARACTER SET utf8;
create database hive DEFAULT CHARACTER SET utf8;
create database oozie DEFAULT CHARACTER SET utf8;
create database hue DEFAULT CHARACTER SET utf8;
create database scm DEFAULT CHARACTER SET utf8;
create database sentry DEFAULT CHARACTER SET utf8;
CREATE USER 'rman'@'localhost' IDENTIFIED BY 'password';
CREATE USER 'scm'@'localhost' IDENTIFIED BY 'password';
CREATE USER 'hive'@'localhost' IDENTIFIED BY 'password';
CREATE USER 'hue'@'localhost' IDENTIFIED BY 'password';
CREATE USER 'oozie'@'localhost' IDENTIFIED BY 'password';
CREATE USER 'sentry'@'localhost' IDENTIFIED BY 'password';
grant all on rman.* TO 'rman'@'%' IDENTIFIED BY 'password';
grant all on scm.* TO 'scm'@'%' IDENTIFIED BY 'password';
grant all on hive.* TO 'hive'@'%' IDENTIFIED BY 'password';
grant all on hue.* TO 'hue'@'%' IDENTIFIED BY 'password';
grant all on oozie.* TO 'oozie'@'%' IDENTIFIED BY 'password';
grant all on sentry.* TO 'sentry'@'%' IDENTIFIED BY 'password';
</code></pre>

### My permissions at start
<pre><code>
show grants for scm;
+----------------------------------------------------------------------------------------------------+
| Grants for scm@%                                                                                   |
+----------------------------------------------------------------------------------------------------+
| GRANT USAGE ON *.* TO 'scm'@'%' IDENTIFIED BY PASSWORD '*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19' |
| GRANT ALL PRIVILEGES ON `scm`.* TO 'scm'@'%'                                                       |
+----------------------------------------------------------------------------------------------------+
2 rows in set (0.00 sec)

show grants for oozie;
+------------------------------------------------------------------------------------------------------+
| Grants for oozie@%                                                                                   |
+------------------------------------------------------------------------------------------------------+
| GRANT USAGE ON *.* TO 'oozie'@'%' IDENTIFIED BY PASSWORD '*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19' |
| GRANT ALL PRIVILEGES ON `oozie`.* TO 'oozie'@'%'                                                     |
+------------------------------------------------------------------------------------------------------+
2 rows in set (0.00 sec)

show grants for rman;
+-----------------------------------------------------------------------------------------------------+
| Grants for rman@%                                                                                   |
+-----------------------------------------------------------------------------------------------------+
| GRANT USAGE ON *.* TO 'rman'@'%' IDENTIFIED BY PASSWORD '*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19' |
| GRANT ALL PRIVILEGES ON `rman`.* TO 'rman'@'%'                                                      |
+-----------------------------------------------------------------------------------------------------+
2 rows in set (0.00 sec)

show grants for hive;
+-----------------------------------------------------------------------------------------------------+
| Grants for hive@%                                                                                   |
+-----------------------------------------------------------------------------------------------------+
| GRANT USAGE ON *.* TO 'hive'@'%' IDENTIFIED BY PASSWORD '*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19' |
| GRANT ALL PRIVILEGES ON `hive`.* TO 'hive'@'%'                                                      |
+-----------------------------------------------------------------------------------------------------+
2 rows in set (0.00 sec)

show grants for hue;
+----------------------------------------------------------------------------------------------------+
| Grants for hue@%                                                                                   |
+----------------------------------------------------------------------------------------------------+
| GRANT USAGE ON *.* TO 'hue'@'%' IDENTIFIED BY PASSWORD '*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19' |
| GRANT ALL PRIVILEGES ON `hue`.* TO 'hue'@'%'                                                       |
+----------------------------------------------------------------------------------------------------+
2 rows in set (0.00 sec)

show grants for sentry;
+-------------------------------------------------------------------------------------------------------+
| Grants for sentry@%                                                                                   |
+-------------------------------------------------------------------------------------------------------+
| GRANT USAGE ON *.* TO 'sentry'@'%' IDENTIFIED BY PASSWORD '*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19' |
| GRANT ALL PRIVILEGES ON `sentry`.* TO 'sentry'@'%'                                                    |
+-------------------------------------------------------------------------------------------------------+
2 rows in set (0.00 sec)
</code></pre>

### Databases available
<pre><code>
show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| hive               |
| hue                |
| mysql              |
| oozie              |
| performance_schema |
| rman               |
| scm                |
| sentry             |
+--------------------+
9 rows in set (0.00 sec)
</code></pre>
