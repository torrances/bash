################################################################
##
## PURPOSE:
## download and build bom from github
##
## HISTORY:
## 5:03 PM 4/20/2015 created 
##
## PREREQUSITES:
## 1. Java must be installed
## 2. Maven must be installed
##
################################################################

export WS=/home/craig/workspaces/public/snowball/

rm -rf $WS
mkdir -p $WS
cd $WS

git init
git remote add wssno http://github.com/torrances/snowball
git pull -u wssno master
mvn clean install	

sudo sh -c 'echo "\nexport WSSNO=/home/craig/workspaces/public/snowball" >> /etc/environment'