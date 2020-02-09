FROM php:7.0-fpm

#apt-get的加速镜像
COPY debian9-sources.list /etc/apt/sources.list

#更新apt-get
RUN apt-get update

#安装pdo_mysql
RUN docker-php-ext-install pdo_mysql

#安装gd库
RUN apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libpng-dev \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ --with-png-dir=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd

#安装mcrypt
RUN apt-get install -y libmcrypt-dev \
    && docker-php-ext-install mcrypt

#安装memcahe
RUN pecl install memcache-4.0.5.2 \
    && docker-php-ext-enable memcache

#安装xdebug
RUN pecl install xdebug-2.6.1 \
    && docker-php-ext-enable xdebug
#复制xdebug配置文件
COPY ./conf.d/* /usr/local/etc/php/conf.d

