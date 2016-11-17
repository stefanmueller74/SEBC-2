## Setup Hive
<pre><code>
hdfs dfs -chmod -R 771 /user/hive/warehouse
hdfs dfs -chown -R hive:hive /user/hive/warehouse
</code></pre>

## Create database for sentry
<pre><code>
mysql -u root -p
create database sentry DEFAULT CHARACTER SET utf8;
CREATE USER 'sentry'@'localhost' IDENTIFIED BY 'sentry';
grant all on sentry.* TO 'sentry'@'%' IDENTIFIED BY 'password';
</code></pre>

## Follow the steps for installing sentry and configure other services to use it