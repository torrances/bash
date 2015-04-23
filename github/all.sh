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
## NOTES:
## 1. Eclipse should be initialized from here:
## 		/home/craig/workspaces/public/projects/
##	  and all projects can be loaded into a single workspace \
##	  (rather than one project per workspace)	
##
################################################################

./pull.sh bom wsbom
sudo sh -c 'echo "\nexport WSBOM=/home/craig/workspaces/public/projects/bom" >> /etc/environment'

./pull.sh java-commons wsjc
sudo sh -c 'echo "\nexport WSJC=/home/craig/workspaces/public/projects/java-commons" >> /etc/environment'

./pull.sh snowball wssno
sudo sh -c 'echo "\nexport WSSNO=/home/craig/workspaces/public/project/snowball" >> /etc/environment'

./pull.sh docker wsdoc
sudo sh -c 'echo "\nexport WSDOC=/home/craig/workspaces/public/project/docker" >> /etc/environment'

./pull.sh solr-minimalist wssm
sudo sh -c 'echo "\nexport WSSM=/home/craig/workspaces/public/project/solr-minimalist" >> /etc/environment'

./pull.sh jaxrs-minimalist wsjm
sudo sh -c 'echo "\nexport WSJM=/home/craig/workspaces/public/project/jaxrs-minimalist" >> /etc/environment'

./pull.sh jaxrs-mongo wsjmg
sudo sh -c 'echo "\nexport WSJMG=/home/craig/workspaces/public/projects/jaxrs-mongo" >> /etc/environment'