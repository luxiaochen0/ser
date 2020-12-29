FROM mysql:8.0.22

COPY ./8.0/conf.d/* /etc/mysql/conf.d/

RUN chmod 644 /etc/mysql/conf.d/*