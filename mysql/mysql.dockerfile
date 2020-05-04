FROM mysql:5.7.30

COPY ./conf.d/* /etc/mysql/conf.d/
