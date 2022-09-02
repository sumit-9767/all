FROM centos:latest
VOLUME /tmp
RUN yum install -y httpd \
 zip\
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page281/dotnet.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip dotnet.zip
RUN rm -rf digital-agency-website-template dotnet.zip
CMD [ "/usr/sbin/httpd","D","FOREGROUND" ]
EXPOSE 80 90
