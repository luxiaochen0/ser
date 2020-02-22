FROM mysql:5.7.29

COPY ./conf.d/* /etc/mysql/conf.d/
