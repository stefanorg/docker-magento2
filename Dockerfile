FROM stefanorg/lamp-zf2

#Installing deps
RUN yum install -y php56w-gd php56w-mcrypt php56w-mbstring

#Copy system file
COPY etc/apache-bootstrap /etc/apache-bootstrap
COPY config/httpd/apache-bootstrap.conf /etc/apache-bootstrap.conf
COPY config/supervisor/supervisord.conf /etc/supervisord.conf

RUN chmod +x /etc/apache-bootstrap

#Copy skeleton files
COPY config/php.ini /etc/php.ini
COPY config/composer.json /opt/magento2/composer.json
COPY config/Makefile /opt/magento2/Makefile
COPY config/vhost.conf /opt/magento2/vhost.conf

#Export volume
VOLUME ["/opt/magento2"]

CMD ["/usr/bin/supervisord", "--configuration=/etc/supervisord.conf"]
