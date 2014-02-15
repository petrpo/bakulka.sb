#!/bin/bash

# This script sets neccesary apps for run bakulka
# 2014-02-14 first init

echo "Hello World. Let's have a fun !!"
echo

# we can do activation of apps in future
#ACTIVE_APPS_FILE=/etc/active_apps

# SET_APPS
# httpd
# php
# mysql

DRU_DB="d7"

function set_httpd {
    echo "Settings in file httpd.conf "
    # allow mod_php
    sed -i 's/\#Include\ \/etc\/httpd\/mod_php.conf/Include\ \/etc\/httpd\/mod_php.conf/g' /etc/httpd/httpd.conf
    sed -i 's/\#ServerName\ www.example.com:80/ServerName\ 127.0.0.1/' /etc/httpd/httpd.conf
    sed -i 's/Options\ Indexes\ FollowSymLinks/Options\ -Indexes\ +FollowSymLinks/' /etc/httpd/httpd.conf
    echo "AddHandler application/x-httpd-php .php .html -html" >> /etc/httpd/httpd.conf
    echo "DirectoryIndex index.php index.html" >> /etc/httpd/httpd.conf
}

function set_mysql {
    echo "Setting mysql rights"
    mysql_install_db > /dev/null
    chown -R mysql:mysql /var/lib/mysql
    /usr/share/mysql/mysql.server start > /dev/null
    mysqladmin -u root create $DRU_DB

    mysql -u root -e "CREATE DATABASE $DRU_DB; GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, INDEX,ALTER ON '$DRU_DB'.* TO '$DRU_DB'@localhost IDENTIFIED BY '$DRU_DB'; FLUSH PRIVILEGES;"

    echo "Drupal7 db      : $DRU_DB"
    echo "Drupal7 db pass : $DRU_DB"
}

# Settings of apps
set_httpd
echo "httpd is set"

set_mysql
echo "mysql is set"

# Run apps
httpd &
echo "httpd is running"

#/usr/share/mysql/mysql.server start
#echo "mysql is running"

firefox http://localhost/ &

echo "There's nothing more to say"
