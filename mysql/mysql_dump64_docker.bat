@ECHO off
set wdb=hzwfdb_manager_rds
docker run -i --network docker-dev_network1 --rm mysql:5.7.29 mysqldump -hmysql -uroot -p123456 --ignore-table=hzwfdb_manager_rds.* %wdb% >"hzwfdb_manager_rds.sql"
pause