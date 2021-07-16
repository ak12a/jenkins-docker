FROM centos:latest
MAINTAINER Arvind Kumar
RUN yum install -y zip unzip httpd
ADD https://www.free-css.com/assets/files/free-css-templates/download/page23/online-movie-store.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip online-movie-store.zip
RUN  cp -rvf  online-movie-store/* .
#RUN rm -f online-movie-store online-movie-store.zip
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
