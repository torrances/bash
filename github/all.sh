################################################################
##
## PURPOSE:
## pull and build all public github projects
##
## HISTORY:
## 12:12 PM 4/23/2015 created 
##
## PREREQUSITES:
## 1. Java must be installed
## 2. Maven must be installed
##
################################################################

./pull.sh bom wsbom
sudo sh -c 'echo "\nexport WSBOM=/home/craig/workspaces/public/bom" >> /etc/environment'

./pull.sh java-commons wsjc
sudo sh -c 'echo "\nexport WSJC=/home/craig/workspaces/public/docker" >> /etc/environment'

./pull.sh snowball wssno
sudo sh -c 'echo "\nexport WSSNO=/home/craig/workspaces/public/docker" >> /etc/environment'

./pull.sh docker wsdoc
sudo sh -c 'echo "\nexport WSDOC=/home/craig/workspaces/public/docker" >> /etc/environment'