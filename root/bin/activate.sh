#!/bin/bash

# This script sets a few things that dependency modules can run without errors
# 2014-06-06 light modifications of description
# 2014-02-14 first init

# SET_APPS
# httpd
# php
# mysql

# basic settings
DRU_DB="d7"
HTTPD_PROCS=`ps ax| grep httpd| grep -v grep | wc -l`
MYSQL_PROCS=`ps ax| grep mysql| grep -v grep | wc -l`

# Fnc sets php and Options for apache 
function set_httpd {
    if [ "$HTTPD_PROCS" -lt "1" ] ; then
        # Less processes then 1 -> httpd is not running. Let's configure
        echo "Settings in file httpd.conf"
        # allow mod_php
        sed -i 's/\#Include\ \/etc\/httpd\/mod_php.conf/Include\ \/etc\/httpd\/mod_php.conf/g' /etc/httpd/httpd.conf
        # allow rewrite
        sed -i 's/\#LoadModule\ rewrite_module\ lib\/httpd\/modules\/mod_rewrite.so/LoadModule\ rewrite_module\ lib\/httpd\/modules\/mod_rewrite.so/g' /etc/httpd/httpd.conf
        sed -i 's/\#ServerName\ www.example.com:80/ServerName\ 127.0.0.1/' /etc/httpd/httpd.conf
        sed -i 's/Options\ Indexes\ FollowSymLinks/Options\ -Indexes\ +FollowSymLinks/' /etc/httpd/httpd.conf
        echo "AddHandler application/x-httpd-php .php .html -html" >> /etc/httpd/httpd.conf
        echo "DirectoryIndex index.php index.html" >> /etc/httpd/httpd.conf
        sed -i '/\/.fonts.conf<\/include>/d' /etc/fonts/conf.d/50-user.conf
    fi
}

# Fnc creates mysql db = d7:d7 (db & pass are same). It gives right mysql permissions
function set_mysql {
    echo "Setting mysql rights to be able to work"
    mysql_install_db > /dev/null
    chown -R mysql:mysql /var/lib/mysql
    /usr/share/mysql/mysql.server start > /dev/null
    echo "Drupal7 db      : $DRU_DB"
    echo "Drupal7 db pass : $DRU_DB"
    if [ ! -d /var/lob/mysql/d7 ] ; then
        mysql -u root -e "CREATE DATABASE $DRU_DB; GRANT ALL PRIVILEGES ON $DRU_DB.* TO $DRU_DB@localhost; FLUSH PRIVILEGES;"
        echo "Mysql db $DRU_DB is created"
        echo
    fi
    }

# Fnc sets right to dir for Drupal that runs under sqlite db
# but not neccesary to keep Drupal here
function set_drupal {
    # we will see if Drupal can be used in the future
    chmod 777 /var/www/htdocs/web/sites/default/files
    chmod 777 /var/www/htdocs/web/sites/default/files/.ht.sqlite
    chmod 777 /var/www/htdocs/web/sites/default/settings.php
}

# Settings of apps
set_httpd
echo "httpd is set"
echo

set_mysql
echo "mysql is set"
echo

# GO GO Apache !!
httpd &
echo "httpd is running"
echo

# Drupal settings (not neccesary)
set_drupal

# GO GO Firefox on localhost/menu-side/
firefox http://localhost/menu-side/ &

echo "All things are done for this time."
echo

