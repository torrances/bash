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

export WS=/home/craig/workspaces/public/bom/

rm -rf $W
mkdir -p $WS
cd $WS

git init
git remote add bom http://github.com/torrances/bom
git pull -u bom master
cd build
mvn clean install	

sudo sh -c 'echo "\nexport BOM=/home/craig/workspaces/public/bom" >> /etc/environment'