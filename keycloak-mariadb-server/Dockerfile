
FROM phpmyadmin:5.2.2 AS pma-base

FROM php:8.0-apache AS bs-keycloak-mariadb
# FROM php:8.0-apache_20250611_3 AS bs-keycloak-mariadb

# [1] PMA
ENV PMA_ARBITRARY=1
RUN rm -rfv /var/www/html \
        && mkdir -pv /etc/phpmyadmin
COPY --from=pma-base \
    /var/www/html/ /var/www/html
COPY --from=pma-base \
    /etc/phpmyadmin/config.inc.php /var/www/html/
RUN sed -i \
        's/localhost/127.0.0.1/g' \
        /var/www/html/config.inc.php
RUN sed -i \
        "s/\$host = \$server\['host'\];/\$host = '127.0.0.1';/g" \
        /var/www/html/libraries/classes/Dbal/DbiMysqli.php
RUN docker-php-ext-install mysqli
RUN mv -v /usr/local/etc/php/php.ini-production /usr/local/etc/php/php.ini \
        && sed -i 's/^;extension=mysqli/extension=mysqli/g' /usr/local/etc/php/php.ini

# [2] MariaDB
RUN echo "\n\
deb http://deb.debian.org/debian bullseye main\n\
deb http://deb.debian.org/debian-security bullseye-security main\n\
deb http://deb.debian.org/debian bullseye-updates main\n\
" > /etc/apt/sources.list
RUN grep -Ev "^\s*[#]" /etc/apt/sources.list
RUN apt-get -y update \
        && apt-get -y upgrade
RUN apt-get -y install \
        mariadb-server
RUN mkdir -pv /run/mysqld/ \
        && chown mysql:mysql /run/mysqld/
ADD resources/*.sql /
ARG MARIADB_DEFAULT_ROOT_PASSWORD="admin"
RUN (/usr/sbin/mysqld --init-file=/init-file.sql &) \
        && /bin/sleep 10 \
        && /usr/bin/mysql -uroot -p${MARIADB_DEFAULT_ROOT_PASSWORD} < /init-db.sql \
        && /usr/bin/mysql -uroot -p${MARIADB_DEFAULT_ROOT_PASSWORD} < /init-user.sql \
        && /usr/bin/mysql -uroot -p${MARIADB_DEFAULT_ROOT_PASSWORD} keycloak < /keycloak.sql

# Miscellaneous
RUN apt-get -y install \
        nano

# Entrypoint
ENTRYPOINT /bin/sleep 10 \
                && (/usr/sbin/mysqld --bind-address=0.0.0.0 &) \
                && apache2-foreground
