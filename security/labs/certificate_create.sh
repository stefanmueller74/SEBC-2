#!/bin/bash

mkdir /opt/cloudera/security
chown 755 /opt/cloudera/security
mkdir /opt/cloudera/security/x509
chown 755 /opt/cloudera/security/x509
mkdir /opt/cloudera/security/jks
chown 755 /opt/cloudera/security/jks
mkdir /opt/cloudera/security/CAcerts
chown 755 /opt/cloudera/security/CAcerts

keytool -genkeypair -keystore example.keystore -keyalg RSA -alias $1 -dname "CN=$1,OU=Security,O=Example,L=Denver,ST=Colorado,C=US" -storepass password -keypass password

sudo cp $JAVA_HOME/jre/lib/security/cacerts $JAVA_HOME/jre/lib/security/jssecacerts

keytool -export -alias $1 -keystore example.keystore -rfc -file selfsigned.cer

cp selfsigned.cer /opt/cloudera/security/x509/$1.pem

cp selfsigned.cer /opt/cloudera/security/jks/

keytool -import -alias $1 -file /opt/cloudera/security/jks/selfsigned.cer -keystore $JAVA_HOME/jre/lib/security/jssecacerts -storepass changeit

keytool -list -v -keystore example.keystore -alias $1

mv example.keystore /opt/cloudera/security/jks/cmhost-keystore.jks