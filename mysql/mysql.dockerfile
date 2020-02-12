FROM mysql:5.7

COPY ./conf.d/my2.cnf /etc/mysql/conf.d
