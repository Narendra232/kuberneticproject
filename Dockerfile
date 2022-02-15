FROM Centos:latest
MAINTAINER kumar.mail017@gmail.com
RUN yum install-y httpd\
zip\
unzip
ADD https://www.free-css.com/assest/file/free-css-template/download/page274/kindle.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip kindle.zip
RUN cp -rvf markup-kindle/* .
RUN rm -ft __MACOSX markup-kindle kindle.zip
CMD ["/usr/sbin/httpd" ,"-D","FOREGROUND"]
EXPOSE 80
