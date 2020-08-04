FROM centos
RUN yum install net-tools -y
RUN yum install php -y
RUN yum install httpd -y
COPY *.php /var/www/html
CMD /usr/sbin/httpd -DFOREGROUND
EXPOSE 80
