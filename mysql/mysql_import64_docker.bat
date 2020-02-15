@ECHO off
set wdb=hzwfdb_manager_rds
docker run -i --network docker-dev_network1 --rm mysql:5.7 mysql -hmysql -uroot -p123456 %wdb% <"hzwfdb_manager_rds.sql"
pause