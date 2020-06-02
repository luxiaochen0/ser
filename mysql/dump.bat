@ECHO off
docker run --network docker-dev_network1 --rm mysql:5.7.30 mysqldump -hmysql5.7 -uroot -p123456 --databases hzwf_manager hzwf_express hzwf_fashion  >"hzwf.sql"
pause