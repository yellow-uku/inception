FROM debian:buster
RUN apt-get update && apt-get upgrade -y && apt-get install -y wget

RUN apt-get install -y php7.3 php-mysqli php-fpm
RUN apt-get install -y php-curl php-gd php-intl php-mbstring php-soap php-xml php-xnlrpc php-zip

ADD https://files.phpmyadmin.net/phpMyAdmin/5.1.0/phpMyAdmin-5.1.0-english.tar.gz phpmyadmin.tar.gz
RUN tar -xf phpmyadmin.tar.gz && mv phpMyAdmin-5.1.0-english /var/www/html/ && rm -rf phpmyadmin.tar.gz
COPY ./srcs/config.inc.php /var/www/html/phpMyAdmin-5.1.0-english
ADD https://ru.wordpress.org/latest-ru_RU.tar.gz wordpress.tar.gz
RUN tar -xvzf wordpress.tar.gz && mv wordpress /var/www/html/ && rm -rf wordpress.tar.gz
COPY ./srcs/wp-config.php /var/www/html/wordpress

EXPOSE 9000

