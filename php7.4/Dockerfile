FROM php:7.4.6-fpm

#apt-get的加速镜像
COPY debian10-sources.list /etc/apt/sources.list

#安装pdo_mysql
RUN docker-php-ext-install pdo_mysql

#安装gd库
RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libpng-dev \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j$(nproc) gd

#安装bcmath
RUN docker-php-ext-install bcmath

#安装mcrypt
RUN apt-get install -y libmcrypt-dev \
    && pecl install mcrypt-1.0.3 \
    && docker-php-ext-enable mcrypt

#安装memcahe
RUN pecl install memcache-4.0.5.2 \
    && docker-php-ext-enable memcache

#安装xdebug
RUN pecl install xdebug-2.9.2 \
    && docker-php-ext-enable xdebug

#复制php配置文件
RUN mv $PHP_INI_DIR/php.ini-development $PHP_INI_DIR/php.ini

#复制自定义的xdebug和其他的配置文件
COPY ./conf.d/* /usr/local/etc/php/conf.d/
