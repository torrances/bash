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

rm -rf $W
mkdir -p $WS
cd $WS

git init
git remote remove docker
git remote add docker http://github.com/torrances/docker
git pull -u docker master

sudo sh -c 'echo "\nexport WSDOOC=/home/craig/workspaces/public/docker" >> /etc/environment'