#!/bin/sh
export DEBIAN_FRONTEND=noninteractive
add-apt-repository -y ppa:nikratio/s3ql
apt-get update
apt-get install --no-install-recommends -y software-properties-common s3ql ca-certificates python-swiftclient
apt-get upgrade --no-install-recommends -y
apt-get clean
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
#S3QL
ulimit -n 30000
