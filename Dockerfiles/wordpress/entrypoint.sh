#!/bin/bash

if ! [ -d /var/www/wordpress/index.php ] ; then
wp core download --path=/var/www/wordpress --version=latest --allow-root --quiet
wp core config --path=/var/www/wordpress --dbname=$DB_NAME --dbuser=$MYSQL_USER --dbpass=$MYSQL_PASSWORD --dbhost=mysql --allow-root --quiet
wp core install --path=/var/www/wordpress --url=$HOST_DOMAIN --title=$HOST_IP --admin_user=$WP_USER --admin_password=$WP_PASS --admin_email=jannabel@student.42.fr --allow-root --quiet
fi

exec "$@"
