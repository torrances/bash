################################################################
##
## PURPOSE:
## download and build public workspace from github
##
## HISTORY:
## 12:12 PM 4/23/2015 created 
##
## PREREQUSITES:
## 1. Java must be installed
## 2. Maven must be installed
##
################################################################

export WS=/home/craig/workspaces/public/$1/projects

if [ -d "$WS" ]; 
	then
	rm -rf $WS
fi

mkdir -p $WS
cd $WS

git init
git remote add $2 http://github.com/torrances/$1
git pull -u $2 master

if [ -d "build" ]; 
	then
	cd build
fi

if [ -e "pom.xml" ];
	then
	mvn clean install
fi