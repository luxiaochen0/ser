#!/bin/bash
docker run -i --network ser_network1 --rm mysql:5.7.30 mysql -hmysql5.7 -uroot -p123456 <"hzwf.sql"