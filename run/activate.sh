#!/bin/bash

# This script sets neccesary apps for run bakulka

echo "Hello World. Let's have a fun !!"

# we can do activation of apps in future
#ACTIVE_APPS_FILE=/etc/active_apps

# SET_APPS
# httpd
# php
# mysql

function set_httpd {
    echo "Settings in file httpd.conf "
    # uncomment line
    sed -i 's/\#Include\ \/etc\/httpd\/mod_php.conf/Include\ \/etc\/httpd\/mod_php.conf/g' /etc/httpd/httpd.conf
#    echo "AddHandler application/x-httpd-php .php .html -html" >> /etc/httpd/httpd.conf
    sed -i 's/\#ServerName\ www.example.com:80/ServerName\ 127.0.0.1/' /etc/httpd/httpd.conf
}

function set_mysql {
    echo "Setting mysql rights"
    # chown -R mysql:mysql /var/lib/mysql
}

# Setting in httpd 
set_httpd
echo "https is set"


