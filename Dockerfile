FROM  ubuntu:latest
MAINTAINER vikashashoke@gmail.com
RUN apt install -y apache2 \
 zip\
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html/
RUN apt update -y
RUN sudo systemctl start apache2
WORKDIR /var/www/html/
RUN unzip photogenic.zip
RUN cp -rvf photogenic/* .
RUN rm -rf photogenic photogenic.zip
CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]
EXPOSE 80 22 
