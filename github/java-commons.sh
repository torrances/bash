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

export WS=~/workspaces
export WSJC=$WS/public/java-commons

if [ ! -d "$WSJC" ]; 
	then

	echo "Downloading and Building ($WSJC)"

	mkdir -p $WSJC
	cd $WJSC
	git init
	git remote add wsjc http://github.com/torrances/java-commons
	git pull -u wsjc master
	cd build
	mvn clean install
else
	echo "Directory already exists $($WJSC)"
fi