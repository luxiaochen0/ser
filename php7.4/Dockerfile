FROM php:7.4.13-fpm

#apt-get的加速镜像
COPY debian10-sources.list /etc/apt/sources.list

#更新apt-get
RUN apt-get update

#安装pdo_mysql
RUN docker-php-ext-install pdo_mysql

#安装gd库
RUN apt-get install -y libfreetype6-dev libjpeg62-turbo-dev libpng-dev\
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j$(nproc) gd

#安装bcmath
RUN docker-php-ext-install bcmath

#安装zip
RUN apt-get install -y libzip-dev\
    && docker-php-ext-install zip

#升级pecl
#RUN pecl channel-update pecl.php.net

#复制pecl模块
COPY ./file/* /usr/local/src/

#安装mcrypt
RUN apt-get install -y libmcrypt-dev \
    && pecl install /usr/local/src/mcrypt-1.0.4.tgz \
    && docker-php-ext-enable mcrypt

#安装memcahe
RUN pecl install /usr/local/src/memcache-4.0.5.2.tgz \
    && docker-php-ext-enable memcache

#安装swoole
RUN pecl install /usr/local/src/swoole-4.5.10.tgz \
    && docker-php-ext-enable swoole

#安装xdebug
RUN pecl install /usr/local/src/xdebug-3.0.1.tgz \
    && docker-php-ext-enable xdebug

#复制php配置文件
RUN mv $PHP_INI_DIR/php.ini-development $PHP_INI_DIR/php.ini

#复制自定义的xdebug和其他的配置文件
COPY ./conf.d/* /usr/local/etc/php/conf.d/
