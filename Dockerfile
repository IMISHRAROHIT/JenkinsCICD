#FROM  ubuntu:latest
#MAINTAINER vikashashoke@gmail.com
#RUN apt update && apt install apt-utils && apt install -y apache2 \
# zip\
# unzip
#ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html/
#WORKDIR /var/www/html/
#ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html/
#RUN unzip photogenic.zip
#RUN cp -rvf photogenic/* .
#RUN rm -rf photogenic photogenic.zip
#CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
#EXPOSE 80
 
FROM ubuntu:latest 
RUN apt update 
RUN apt-get update && apt-get install -y apt-utils && apt-get install -y curl
RUN apt install -y apache2-utils 
RUN apt install -y apache2 
RUN apt clean
RUN apt install -y zip
RUN apt install -y unzip
RUN apt-get install -y wget 
EXPOSE 80
CMD ["apache2ctl", "-D", "FOREGROUND"]
#WORKDIR /var/www/html
RUN wget  https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip
RUN cp  photogenic.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip photogenic.zip
RUN cp -rvf photogenic/* .
RUN rm -rf photogenic photogenic.zip
CMD ["apache2ctl", "-D", "FOREGROUND"]
EXPOSE 80


# FROM  centos:latest
# MAINTAINER vikashashoke@gmail.com
# RUN yum install -y httpd \
#  zip\
#  unzip
# ADD https://www.free-css.com/assets/files/free-css-templates/download/page265/shine.zip /var/www/html/
# WORKDIR /var/www/html/
# RUN unzip shine.zip
# RUN cp -rvf shine/* .
# RUN rm -rf shine shine.zip
# CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
# EXPOSE 80  