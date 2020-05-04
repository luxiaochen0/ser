@ECHO off
set wdb=hzwfdb_manager_rds
docker run --network docker-dev_network1 --rm mysql:5.7.30 mysqldump -hmysql5.7 -uroot -p123456 %wdb% >"hzwfdb_manager_rds.sql"
pause