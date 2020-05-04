FROM mysql:5.7.30

COPY ./5.7/conf.d/* /etc/mysql/conf.d/
