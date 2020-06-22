FROM ubuntu
Run apt-get update
RUN apt-get install apache2 -y
ADD . /var/www/html
ENTRYPOINT apachectl -D FOREGROUND
ENV DEBIAN_FRONTEND=noninteractive 
