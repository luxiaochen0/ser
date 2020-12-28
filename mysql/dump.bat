@ECHO off
docker run --network ser_network1 --rm mysql:5.7.30 mysqldump -hmysql5.7 -uroot -p123456 --databases hzwf_manager hzwf_express hzwf_fashion hzwf_mijue >"hzwf.sql"
pause