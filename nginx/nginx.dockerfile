FROM nginx:1.18.0

COPY ./conf.d/* /etc/nginx/conf.d/
COPY ./conf.part/* /etc/nginx/conf.part/
COPY ./certs/* /etc/nginx/certs/

#RUN ls -la /etc/nginx/conf.d/

