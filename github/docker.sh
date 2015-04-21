################################################################
##
## PURPOSE:
## download the docker repository from github
##
## HISTORY:
## 5:03 PM 4/20/2015 created 
##
## PREREQUSITES:
## <none>
##
################################################################

export WS=~/workspaces
export WSDOC=$WS/public/java-docker

if [ ! -d "$WSDOC" ]; 
	then

	echo "Downloading ($WSDOC)"

	mkdir -p $WSDOC
	cd $WSDOC
	git init
	git remote add wsdoc http://github.com/torrances/docker
	git pull -u wsdoc master
	cd build
	mvn clean install
else
	echo "Directory already exists $($WSDOC)"
fi