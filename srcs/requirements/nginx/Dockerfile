FROM debian:buster
RUN apt-get update && apt-get upgrade -y && apt-get install -y wget nginx
COPY default /etc/nginx/sites-available/default
RUN chown -R www-data /var/www/html/
COPY ./service.sh .
CMD ./service.sh