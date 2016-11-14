#!/bin/bash

scp -i ~/Documents/keys/clouderabootcamp.pem $1 centos@52.211.62.245:/home/centos 
scp -i ~/Documents/keys/clouderabootcamp.pem $1 centos@52.50.160.20:/home/centos
scp -i ~/Documents/keys/clouderabootcamp.pem $1 centos@52.209.56.30:/home/centos
scp -i ~/Documents/keys/clouderabootcamp.pem $1 centos@52.212.53.27:/home/centos
scp -i ~/Documents/keys/clouderabootcamp.pem $1 centos@52.209.38.147:/home/centos