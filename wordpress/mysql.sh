export DEBIAN_FRONTEND=noninteractive
sed -i 's/127.0.0.1 localhost/127.0.0.1 localhost example.eu-west-1.rds.amazonaws.com/g' /etc/hosts
apt-get install mysql-server -y
cat /vagrant/mysql.sql | mysql -u root
mkdir -p /etc/example
