#!/bin/bash

# 2014-08-17 script deletes unused icons on Desktop and install new one for GSM settings
# 2014-02-14 first init

# delete icons from Desktop
rm Plocha/Soft*.desktop Plocha/User*.desktop > /dev/null
rm Desktop/Soft*.desktop Desktop/User*.desktop > /dev/null

# change permission of new desktop icon to refresh Desktop
chmod 600 Plocha/N*.desktop > /dev/null
chmod 600 Desktop/G*.desktop > /dev/null

exit

# we can do activation of apps in future
#ACTIVE_APPS_FILE=/etc/active_apps

# SET_APPS
# httpd
# php
# mysql

DRU_DB="d7"

# Fnc sets php and Options for apache 
function set_httpd {
    echo "Settings in file httpd.conf "
    # allow mod_php
    sed -i 's/\#Include\ \/etc\/httpd\/mod_php.conf/Include\ \/etc\/httpd\/mod_php.conf/g' /etc/httpd/httpd.conf
    # allow rewrite
    sed -i 's/\#LoadModule\ rewrite_module\ lib\/httpd\/modules\/mod_rewrite.so/LoadModule\ rewrite_module\ lib\/httpd\/modules\/mod_rewrite.so/g' /etc/httpd/httpd.conf
    sed -i 's/\#ServerName\ www.example.com:80/ServerName\ 127.0.0.1/' /etc/httpd/httpd.conf
    sed -i 's/Options\ Indexes\ FollowSymLinks/Options\ -Indexes\ +FollowSymLinks/' /etc/httpd/httpd.conf
    echo "AddHandler application/x-httpd-php .php .html -html" >> /etc/httpd/httpd.conf
    echo "DirectoryIndex index.php index.html" >> /etc/httpd/httpd.conf
    # sed -i 's/<include\ ignore_missing=\"yes\"\ deprecated=\"yes\">\~\/.fonts.conf\<\/include>//g' /etc/fonts/conf.d/50-user.conf
    sed -i '/\/.fonts.conf<\/include>/d' /etc/fonts/conf.d/50-user.conf
}

# Fnc creates mysql db = d7:d7 (same pass) and 
#     gives right perrmisions to mysql
function set_mysql {
    echo "Setting mysql rights to be able to work"
    mysql_install_db > /dev/null
    chown -R mysql:mysql /var/lib/mysql
    /usr/share/mysql/mysql.server start > /dev/null
    echo "Drupal7 db      : $DRU_DB"
    echo "Drupal7 db pass : $DRU_DB"
    mysql -u root -e "CREATE DATABASE $DRU_DB; GRANT ALL PRIVILEGES ON $DRU_DB.* TO $DRU_DB@localhost; FLUSH PRIVILEGES;"
}

# Fnc sets right to dir for Drupal that runs under sqlite db
function set_drupal {
    # we will see if Drupal can be used in the future
    chmod 777 /var/www/htdocs/web/sites/default/files
    chmod 777 /var/www/htdocs/web/sites/default/files/.ht.sqlite
    chmod 777 /var/www/htdocs/web/sites/default/settings.php
}

# Settings of apps
set_httpd
echo "httpd is set"

set_mysql
echo "mysql is set"

# GO GO Apache !!
httpd &
echo "httpd is running"

# Drupal settings
set_drupal

# Uncomment and mysql runs
#/usr/share/mysql/mysql.server start
#echo "mysql is running"

# GO GO Firefox on localhost/menu-side/
firefox http://localhost/menu-side/ &

echo "There're all things done for this time."
