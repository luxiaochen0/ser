@ECHO off
set wdb=hzwfdb_manager_rds
docker run -i --network ser_network1 --rm mysql:5.7.32 mysql -hmysql5.7 -uroot -p123456 <"hzwf.sql"
pause