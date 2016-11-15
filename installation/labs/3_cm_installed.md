# On all hosts (to get jdk)

<pre><code>
yum install -y yum-utils
yum-config-manager --add-repo https://archive.cloudera.com/cm5/redhat/6/x86_64/cm/cloudera-manager.repo
yum update -y
sudo yum install -y oracle-j2sdk1.7
</code></pre>

## On edge 
<pre><code>
sudo yum install cloudera-manager-daemons cloudera-manager-server

/etc/default/cloudera-scm-server switch xmx to 4G
sudo service cloudera-scm-server start

vi /etc/cloudera-scm-server/db.properties and uncomment the line with localhost
</code></pre>

## Modify /etc/cloudera-scm-server/db.properties with this
<pre><code>

com.cloudera.cmf.db.type=mysql
com.cloudera.cmf.db.host=localhost
com.cloudera.cmf.db.name=cmserver
com.cloudera.cmf.db.user=cmserver
com.cloudera.cmf.db.password=password
com.cloudera.cmf.db.setupType=EXTERNAL
</code></pre>

## On edge as root
<pre><code>
mysql -u root -p
create database amon DEFAULT CHARACTER SET utf8;
create database rman DEFAULT CHARACTER SET utf8;
create database cmserver DEFAULT CHARACTER SET utf8;
grant all on amon.* TO 'amon'@'%' IDENTIFIED BY 'password';
grant all on rman.* TO 'rman'@'%' IDENTIFIED BY 'password';
grant all on cmserver.* TO 'cmserver'@'%' IDENTIFIED BY 'password';
CREATE USER 'amon'@'localhost' IDENTIFIED BY 'password';
CREATE USER 'rman'@'localhost' IDENTIFIED BY 'password';
CREATE USER 'cmserver'@'localhost' IDENTIFIED BY 'password';
</code></pre>

## If problem with statement execution (on master)
<pre><code>
SET GLOBAL binlog_format = 'ROW'; 
</code></pre>