@ECHO off
docker run --rm -v docker-dev_mysql_data:/var/lib/mysql -v /d/code/docker-dev/mysql/mysql_data:/mysql_data centos:7.7.1908 sh -c "rm -rf /var/lib/mysql/* && tar zxvf /mysql_data/mysql_data.tar.gz -C /var/lib/mysql"
pause