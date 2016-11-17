## Preparing cloudera manager for TLS
### On every host
<pre><code>
mkdir /opt/cloudera/security
chown 755 /opt/cloudera/security
mkdir /opt/cloudera/security/x509
chown 755 /opt/cloudera/security/x509
mkdir /opt/cloudera/security/jks
chown 755 /opt/cloudera/security/jks
mkdir /opt/cloudera/security/CAcerts
chown 755 /opt/cloudera/security/CAcerts
</code></pre>
## Self signed certificate creation
## On cloudera manager
<pre><code>

export JAVA_HOME=/usr/java/jdk1.7.0_67-cloudera
export PATH=$JAVA_HOME/bin:$PATH

keytool -genkeypair -keystore example.keystore -keyalg RSA -alias ip-172-31-12-212.eu-west-1.compute.internal -dname "CN=ip-172-31-12-212.eu-west-1.compute.internal,OU=Security,O=Example,L=Denver,ST=Colorado,C=US" -storepass password -keypass password

sudo cp $JAVA_HOME/jre/lib/security/cacerts $JAVA_HOME/jre/lib/security/jssecacerts

keytool -export -alias ip-172-31-12-212.eu-west-1.compute.internal -keystore example.keystore -rfc -file selfsigned.cer

cp selfsigned.cer /opt/cloudera/security/x509/ip-172-31-12-212.eu-west-1.compute.internal.pem

cp selfsigned.cer /opt/cloudera/security/jks/

keytool -import -alias ip-172-31-12-212.eu-west-1.compute.internal -file /opt/cloudera/security/jks/selfsigned.cer -keystore $JAVA_HOME/jre/lib/security/jssecacerts -storepass changeit

keytool -list -v -keystore example.keystore -alias ip-172-31-12-212.eu-west-1.compute.internal

mv example.keystore /opt/cloudera/security/jks/cmhost-keystore.jks
</code></pre>
## Activate TLS for agent in Administration > Settings > Security and provide the keystore path and password
<pre><code>
sudo service cloudera-scm-server restart 
sudo service cloudera-scm-agent restart 
</code></pre>