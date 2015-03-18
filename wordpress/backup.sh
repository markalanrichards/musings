mysqldump -u wordpress -pwordpress -h  example.eu-west-1.rds.amazonaws.com --all-databases --add-drop-database | gzip > /tmp/mysql.gz
cd /var/www && tar -czf /tmp/backup.tar.gz wordpress static backup.sh 
aws s3 cp /tmp/backup.tar.gz s3://[your_bucket]/site`date +%d%m%Y`.tar.gz
aws s3 cp s3://[your_bucket]/site`date +%d%m%Y`.tar.gz s3://[your_bucket]/site.tar.gz
aws s3 cp /tmp/mysql.gz  s3://[your_bucket]/mysql`date +%d%m%Y`.gz 
aws s3 cp s3://[your_bucket]/mysql`date +%d%m%Y`.gz  s3://[your_bucket]/mysql.gz
