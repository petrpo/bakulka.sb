Bakulka.sb
==========

Slax custom module
- dependency modules : apache, php, mysql
- custom script for this module is in /run/activate.sh

Description:
- It finaly runs firefox on localhost webpage redy to configure Jbox localy

Define:
- 2 dns names for dispatching servers

Backup:

notes:
- backup mysql db: mysqldump db-name > db-in-file.sql
- import mysql db: mysql -u username -p db-name < db-in-file.sql

Description for USB Slax:
- custom modules/packages in directory : /slax/modules

Desription for running Slax with Apache, PHP, mysql
- Apache and PHP needs files in directory : /var/www/htdocs

rt-init buildscript:
- gets zipped github repository and builds module .sb with
