FROM stefanorg/centos-php56
RUN yum install -y php56w-mysql \
		   php56w-pdo \
		   php56w-gd \
		   php56w-mcrypt \
		   php56w-intl 

COPY php.ini.sample /etc/php.ini

RUN service httpd restart
