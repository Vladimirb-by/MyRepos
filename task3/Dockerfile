# Dockefile to build Docker Images
# Ubuntu
# apache

FROM ubuntu:latest

ARG DEBIAN_FRONTEND=noninteractive


RUN apt-get -y update
RUN apt-get install -y apache2

RUN echo 'Hello' > /var/www/html/index.html

ENV DEVOPS="Uladzimir Burduko"
ENTRYPOINT echo $DEVOPS > /var/www/html/index.html && /usr/sbin/apache2ctl -DFOREGROUND
#CMD ["echo $DEVOPS", "&&", "/usr/sbin/apache2ctl", "-DFOREGROUND"] 

EXPOSE 80
