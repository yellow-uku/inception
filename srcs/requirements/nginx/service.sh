openssl req -x509 -newkey rsa:4096 -keyout /etc/ssl/nginx-selfsigned.key -nodes -out /etc/ssl/nginx-selfsigned.pem -days 365 -subj "/C=RU/ST=Moscow/L=Moscow/O=School_21/OU=pkayleen/CN=localhost"

# service mysql start
# mysql < /tmp/mysql.sql
nginx -g "daemon off;"
# service php7.3-fpm start