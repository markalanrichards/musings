#!/bin/bash
aws s3 cp s3:/[your_bucket]/mysql.gz /tmp/mysql.gz
cat /tmp/mysql.gz | gunzip | mysql -u root
