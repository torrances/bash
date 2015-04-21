################################################################
##
## PURPOSE:
## download and build java-commons from github
##
## HISTORY:
## 5:03 PM 4/20/2015 created 
##
## PREREQUSITES:
## 1. Java must be installed
## 2. Maven must be installed
##
################################################################

export WS=/home/craig/workspaces/public/java-commons/

rm -rf $WS
mkdir -p $WS
cd $WS

git init
git remote add wsjc http://github.com/torrances/java-commons
git pull -u wsjc master
mvn clean install	

sudo sh -c 'echo "\nexport WSJC=/home/craig/workspaces/public/java-commons" >> /etc/environment'