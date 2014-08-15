README of custom Slax module rt-init 
====================================

Steps how to prepare Slax custom module


## 1.process ##
- module changes in git repository (gihub.com)
## 2.process ##
- module building (activation of update inside Slax, building somewhere on Slax server)
## 3.process ##
- module activation in Slax


#INSIDE of Slax
*Buildscript for module rt-init
- There are couple of templates in docs directory
- script can set dependencies
*    apache, php, mysql (automaticaly brings apr,apr-utils,libaio)
- tells Slax where to get sources to build module
*    github.com/petrpo/bakulka.sb/archive/master.zip
- can be downloaded from Slax server (inside of Slax)
*    # slax buildscript download rt-init
- after changes we can activate building od module somewhere on slax server (inside of Slax)
*    #slax buildscript update rt-init.SlaxBuild
- when the module is built (email notification) you can activate it
*    #slax activate rt-init

*Slax modules has boot script 
    /root/activate.sh
- it boots when module is activated in Slax
- it sets PHP options, Apache Options & directory permissions
- it creates mysql DB (d7:d7) for future needs 
- it finaly runs Firefox on http://localhost/menu-side/

#Directory structure (apache)
* DEFAULT web
    /var/www/htdocs/menu-side/
* TEST webs
*    /var/www/htdocs/menu-top/
*    /var/www/htdocs/www/ - Drupal with sqlite
*    /var/www/htdocs/menu/

===================================
|   Next steps                    |
===================================
- to get module working on usb key

For future we can try

notes:
- backup mysql db: mysqldump db-name > db-in-file.sql
- import mysql db: mysql -u username -p db-name < db-in-file.sql
