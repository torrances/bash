# Do not install nodejs using the apt package manager. 
# This will install an older version. 
# Use a PPA (personal package archive) to get a more up to date version. 
sudo add-apt-repository ppa:chris-lea/node.js

# update the package lists from the repositories
sudo apt-get update

# install nodejs and npm
sudo apt-get install nodejs -y
sudo npm install npm -g