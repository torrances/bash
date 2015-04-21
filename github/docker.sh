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

export WS=/home/craig/workspaces/public/docker/

rm -rf $WS
mkdir -p $WS
cd $WS

git init
git remote add wsdoc http://github.com/torrances/docker
git pull -u wsdoc master

sudo sh -c 'echo "\nexport WSDOC=/home/craig/workspaces/public/docker" >> /etc/environment'