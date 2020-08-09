from ubuntu

run apt-get update && apt-get install apache2 apache2-utils -y && apt-get clean

run groupadd -r -g 1001 app && useradd -r -u 1001 -g app -d /app -s /bin/false app 
run rm -r /var/www/html && ln -s /app /var/www/html && mkdir /app && chown -R app.app /app

run echo Listen 8000 >/etc/apache2/ports.conf
run echo export APACHE_RUN_USER=app >>/etc/apache2/envvars
run echo export APACHE_RUN_GROUP=app >>/etc/apache2/envvars

expose 8000
cmd /usr/sbin/apache2ctl -D FOREGROUND
