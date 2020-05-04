FROM mysql:8.0.20

COPY ./8.0/conf.d/* /etc/mysql/conf.d/
