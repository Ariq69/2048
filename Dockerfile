FROM ubuntu:25.04
RUN apt update -y && apt install nginx -y
ADD . /var/html/www/
CMD nginx -g "daemon off;"