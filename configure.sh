#!/usr/bin/env bash

function configureApache()
{
    ./configure \
    --with-included-apr \
    --with-pcre=/usr/local/pcre \
    --enable-so
}

function configurePHP()
{
    ./configure \
    --prefix=/usr/local/php \
    --with-apxs2=/usr/local/apache2/bin/apxs \
    --with-pear=/usr/local/php/lib/php \
    --with-config-file-path=/usr/local/php/lib \
    --with-openssl \
    --with-zlib \
    --with-curl \
    --with-jpeg \
    --with-freetype \
    --with-mhash \
    --with-mysqli=mysqlnd \
    --with-pdo-mysql=mysqlnd \
    --with-pdo-pgsql=/etc/postgresql \
    --with-pgsql=shared,/etc/postgresql \
    --with-xsl \
    --with-zip \
    --with-imap-ssl \
    --with-webp \
    --enable-bcmath \
    --enable-calendar \
    --enable-dba=shared \
    --enable-exif \
    --enable-ftp \
    --enable-gd \
    --enable-intl \
    --enable-mbstring \
    --enable-pcntl \
    --enable-shmop \
    --enable-soap \
    --enable-sockets \
    --enable-sysvmsg \
    --enable-sysvsem \
    --enable-sysvshm \
    --enable-zend-test \
    --enable-mysqlnd \
    --disable-sigchild \
    --disable-huge-code-pages
    #--with-jpeg \
    #--enable-inline-optimization \
    #--enable-fileinfo \
    #--enable-phar \
    #--enable-zip \
    #--enable-ctype \
    #--enable-gd-native-ttf \
    #--enable-magic-quotes \
    #--enable-wddx \
    #--with-libzip \
    #--with-xmlrpc \
    #--with-mysql=mysqlnd \
    #--with-zlib-dir=/opt/lampp \
    #--with-openssl=/opt/lampp \
    #--with-xsl=/opt/lampp \
    #--with-ldap=/opt/lampp \
    #--with-jpeg-dir=/opt/lampp \
    #--with-freetype-dir=/opt/lampp \
    #--with-sqlite=shared,/opt/lampp \
    #--with-sqlite3=/opt/lampp \
    #--with-icu-dir=/opt/lampp \
    #--with-curl=/opt/lampp \
    #--with-gettext=/opt/lampp \
    #--with-mssql=shared,/opt/lampp \
    #--with-sybase-ct=/opt/lampp \
    #--with-mcrypt=/opt/lampp \
    #--with-mhash=/opt/lampp \
    #--with-gdbm=/opt/lampp \
    #--with-bz2=/opt/lampp \
    #--with-iconv=/opt/lampp \
    #--with-pdo_sqlite=/opt/lampp \
    #--with-pdo-dblib=shared,/opt/lampp
}
