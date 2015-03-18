#!/bin/bash
apt-get update && apt-get dist-upgrade -y
apt-get install python-pip -y
pip install awscli
sudo apt-get install apache2 php5-mysql php5 libapache2-mod-php5 php5-mcrypt php5-gd libssh2-php -y
mkdir /tmp/site
aws s3 cp s3://[your_bucket]/site.tar.gz /tmp/site/site.tar.gz
cd /tmp/site && tar xzf site.tar.gz
mkdir -p /var/www
rsync -avP /tmp/site/ /var/www
chown -R www-data:www-data *

cp /etc/apache2/sites-available/000-default.conf /etc/apache2/sites-available/001-example-blog.conf
sed -i 's/#ServerName www.example.com/ServerName blog.example.com/g' /etc/apache2/sites-available/001-example-blog.conf
sed -i 's/DocumentRoot \/var\/www\/html/DocumentRoot \/var\/www\/wordpress\/example\n <Directory \/var\/www\/wordpress\/example\/>\n AllowOverride All\n <\/Directory>/g' /etc/apache2/sites-available/001-example-blog.conf

cp /etc/apache2/sites-available/000-default.conf /etc/apache2/sites-available/002-example.conf
sed -i 's/#ServerName www.example.com/ServerName www.example.com/g' /etc/apache2/sites-available/002-example-static.conf
sed -i 's/DocumentRoot \/var\/www\/html/DocumentRoot \/var\/www\/static\/example/g' /etc/apache2/sites-available/002-example-static.conf

rm /etc/apache2/sites-enabled/000-default.conf
ln -s /etc/apache2/sites-available/001-example-blog.conf /etc/apache2/sites-enabled/001-example-blog.conf
ln -s /etc/apache2/sites-available/002-example-static.conf /etc/apache2/sites-enabled/002-example-static.conf
service apache2 restart
