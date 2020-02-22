FROM nginx:1.17.8

COPY ./conf.d/* /etc/nginx/conf.d/

