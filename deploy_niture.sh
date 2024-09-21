#!/bin/bash

sudo yum install httpd -y

sudo apachectl start
sudo systemctl enable httpd

sudo firewall-cmd --zone=public --add-service=http
sudo firewall-cmd --permanent --zone=public --add-service=http

cd /var/www/html/

sudo wget https://objectstorage.us-ashburn-1.oraclecloud.com/p/fpxh_DlffpsXb1y4NtJ_ykGWfmsSYe9VZ8ZhM3Qk5mSEjl1eJeP4qfmrQjuTfAxn/n/idqfa2z2mift/b/bootcamp-oci/o/EN/oci-handson-module04-website-files-en.zip

sudo unzip oci-handson-module04-website-files-en.zip

sudo chown -R apache:apache /var/www/html

sudo rm -rf oci-handson-module04-website-files-en.zip