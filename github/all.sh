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

./pull.sh docker wspdo
sudo sh -c 'echo "\nexport WSPDO=/home/craig/workspaces/public/projects/docker" >> /etc/environment'

./pull.sh bom wspbo
sudo sh -c 'echo "\nexport WSPBO=/home/craig/workspaces/public/projects/bom" >> /etc/environment'

./pull.sh java-commons wspjco
sudo sh -c 'echo "\nexport WSPJC=/home/craig/workspaces/public/projects/java-commons" >> /etc/environment'

./pull.sh snowball wspsn
sudo sh -c 'echo "\nexport WSPSN=/home/craig/workspaces/public/projects/snowball" >> /etc/environment'

./pull.sh solr-minimalist wspsmi
sudo sh -c 'echo "\nexport WSPSM=/home/craig/workspaces/public/projects/solr-minimalist" >> /etc/environment'

./pull.sh jaxrs-minimalist wspjmi
sudo sh -c 'echo "\nexport WSPJM=/home/craig/workspaces/public/projects/jaxrs-minimalist" >> /etc/environment'

./pull.sh jaxrs-mongo wspjmo
sudo sh -c 'echo "\nexport WSPJMO=/home/craig/workspaces/public/projects/jaxrs-mongo" >> /etc/environment'

./pull.sh gngrams-scripts wspgss
sudo sh -c 'echo "\nexport WSPGS=/home/craig/workspaces/public/projects/jaxrs-mongo" >> /etc/environment'
