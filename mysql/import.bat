@ECHO off
set wdb=hzwfdb_manager_rds
docker run -i --network docker-dev_network1 --rm mysql:5.7.30 mysql -hmysql5.7 -uroot -p123456 <"hzwf.sql"
pause