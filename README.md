README of custom Slax module rt-init 
====================================

Steps how to prepare Slax custom module

## 1.process ##

- module changes in git repository (gihub.com)
 
## 2.process ##

- module building (activation of update inside Slax, building somewhere on Slax server)

## 3.process ##

- module activation in Slax



# INSIDE of Slax #

## Buildscript for module rt-init ##

* There are couple of templates in docs directory

* script can set dependencies 

<code> apache, php, mysql (automaticaly brings apr,apr-utils,libaio)</code>

* tells Slax where to get sources to build module 

<code>github.com/petrpo/bakulka.sb/archive/master.zip</code>

* can be downloaded from Slax server (inside of Slax)

<code>
slax buildscript download rt-init
</code>

* after changes building of module can be activated (inside of Slax) on remote slax server

<code>
slax buildscript update rt-init.SlaxBuild
</code>

* when the module is built (email notification) you can activate it

<code>
slax activate rt-init
</code>

*Slax modules has boot script

<code>/root/activate.sh</code>

- it boots when module is activated in Slax
- it sets PHP options, Apache Options & directory permissions
- it creates mysql DB (d7:d7) for future needs 
- it finaly runs Firefox on http://localhost/menu-side/

# Directory structure (apache)

DEFAULT web

<code>/var/www/htdocs/menu-side/</code>

TEST webs

<code>/var/www/htdocs/menu-top/</code>

<code>/var/www/htdocs/www/ - Drupal with sqlite </code>

<code>/var/www/htdocs/menu/</code>

## Next steps

- to get module working on usb key

## For future we can try

# Notes:

- backup mysql db: mysqldump db-name > db-in-file.sql
- import mysql db: mysql -u username -p db-name < db-in-file.sql
