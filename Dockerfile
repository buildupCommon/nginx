FROM ubuntu:18.04
MAINTAINER Roseline <guseod24@gmail.com>

RUN apt-get update
RUN apt-get install -y nginx # install nginx web server ('yes' or 'yes'~)

VOLUME ["/data", "/etc/nginx/site-enabled", "/var/log/nginx"] 

# Open HTTP port for nginx
EXPOSE 80

WORKDIR /etc/nginx 

CMD ["nginx"] 
