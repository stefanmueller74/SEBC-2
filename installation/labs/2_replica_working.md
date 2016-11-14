## On node edge and replica node

<pre><code>yum install -y wget
wget http://repo.mysql.com/mysql-community-release-el6-5.noarch.rpm
sudo rpm -ivh mysql-community-release-el6-5.noarch.rpm
</code></pre>

##Change repository activate in yum.repos.d

<pre><code>vi /etc/yum.repos.d/mysql-community.repo
yum update -y
sudo yum install -y mysql-server
sudo yum install -y mysql
service mysqld start
chkconfig mysqld on
</code></pre>

## Just in case on master and replica node (or add an exception)
<pre><code>service iptables stop</code></pre>

## On other nodes
<pre><code>wget http://repo.mysql.com/mysql-community-release-el6-5.noarch.rpm
sudo rpm -ivh mysql-community-release-el6-5.noarch.rpm
</code></pre>

##Change repository activate in yum.repos.d

<pre><code>vi /etc/yum.repos.d/mysql-community.repo
yum update -y
sudo yum install -y mysql
</code></pre>

## Add jdbc connector from oracle website v5.1 and add to path (/usr/bin already in path)
<pre><code>
wget http://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-java-5.1.40.tar.gz
tar -xzvf mysql-connector-java-5.1.40.tar.gz
sudo mv mysql-connector-java-5.1.40/mysql-connector-java-5.1.40-bin.jar /usr/bin/
</pre></code>

## Run mysql_secure_installation and configure root on both edge and replica server

## On master 
<pre><code>GRANT REPLICATION SLAVE ON *.* TO 'replicauser'@'node2' IDENTIFIED BY 'password'
SET GLOBAL binlog_format = 'ROW'
FLUSH TABLES WITH READ LOCK;
</code></pre>

## Add to /etc/my.cnf on master

<pre><code>[mysqld]
bind-address = 0.0.0.0
server-id = 1
log-error=/var/log/mysql/mysql.err
log-bin = /var/log/mysql/mysql-replication.log
binlog-ignore-db = "mysql"
</code></pre>

## Add to /etc/my.cnf on replica node
<pre><code>[mysqld]
bind-address = 0.0.0.0
server-id = 2
</code></pre>

## On master we get
<pre><code>show master status;
+--------------------------+----------+--------------+------------------+
| File                     | Position | Binlog_Do_DB | Binlog_Ignore_DB |
+--------------------------+----------+--------------+------------------+
| mysql-replication.000001 |      262 |              | mysql            |
+--------------------------+----------+--------------+------------------+
</code></pre>

## On replica node 
<pre><code>CHANGE MASTER TO MASTER_HOST='edge', MASTER_USER='replicauser', MASTER_PASSWORD='password', MASTER_LOG_FILE='mysql-replication.000001', MASTER_LOG_POS=262;
START SLAVE
SHOW SLAVE STATUS \G

SHOW SLAVE STATUS \G
*************************** 1. row ***************************
               Slave_IO_State: Waiting for master to send event
                  Master_Host: edge
                  Master_User: replicauser
                  Master_Port: 3306
                Connect_Retry: 60
              Master_Log_File: mysql-replication.000001
          Read_Master_Log_Pos: 262
               Relay_Log_File: mysqld-relay-bin.000002
                Relay_Log_Pos: 261
        Relay_Master_Log_File: mysql-replication.000001
             Slave_IO_Running: Yes
            Slave_SQL_Running: Yes
              Replicate_Do_DB: 
          Replicate_Ignore_DB: 
           Replicate_Do_Table: 
       Replicate_Ignore_Table: 
      Replicate_Wild_Do_Table: 
  Replicate_Wild_Ignore_Table: 
                   Last_Errno: 0
                   Last_Error: 
                 Skip_Counter: 0
          Exec_Master_Log_Pos: 262
              Relay_Log_Space: 418
              Until_Condition: None
               Until_Log_File: 
                Until_Log_Pos: 0
           Master_SSL_Allowed: No
           Master_SSL_CA_File: 
           Master_SSL_CA_Path: 
              Master_SSL_Cert: 
            Master_SSL_Cipher: 
               Master_SSL_Key: 
        Seconds_Behind_Master: 0
Master_SSL_Verify_Server_Cert: No
                Last_IO_Errno: 0
                Last_IO_Error: 
               Last_SQL_Errno: 0
               Last_SQL_Error: 
  Replicate_Ignore_Server_Ids: 
             Master_Server_Id: 1
1 row in set (0.00 sec)
</code></pre>
