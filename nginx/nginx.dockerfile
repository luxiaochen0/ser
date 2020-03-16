FROM nginx:1.17.8

COPY ./conf.d/* /etc/nginx/conf.d/
COPY ./certs/* /etc/nginx/certs/

#RUN ls -la /etc/nginx/conf.d/

