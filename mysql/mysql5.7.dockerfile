FROM mysql:5.7.32

COPY ./5.7/conf.d/* /etc/mysql/conf.d/

RUN chmod 644 /etc/mysql/conf.d/*
