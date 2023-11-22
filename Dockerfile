FROM composer:latest
RUN apk add npm
RUN apk add --no-cache  g++ autoconf make pcre2-dev linux-headers
RUN pecl install xdebug
RUN echo "zend_extension=/usr/local/lib/php/extensions/no-debug-non-zts-20220829/xdebug.so" >> /usr/local/etc/php/php-cli.ini
RUN echo "xdebug.mode=coverage" >> /usr/local/etc/php/php-cli.ini
RUN echo "xdebug.start_with_request=yes" >> /usr/local/etc/php/php-cli.init
