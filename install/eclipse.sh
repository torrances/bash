################################################################
##
## PURPOSE:
## download and install Eclipse Luna
##
## HISTORY:
## 3:50 PM 4/21/2015 created 
##
## PREREQUSITES:
## <none>
##
################################################################

# create directory structure
mkdir -p /home/craig/eclipse/luna
cd /home/craig/eclipse/luna

# download and unzip
wget http://ftp.osuosl.org/pub/eclipse//technology/epp/downloads/release/luna/SR2/eclipse-java-luna-SR2-linux-gtk-x86_64.tar.gz
tar -zxvf eclipse-java-luna-SR2-linux-gtk-x86_64.tar.gz

# clean up folder structure and files
mv eclipse e
mv e/* .
rm -rf e
rm eclipse-java*.tar.gz

# update the path
sudo sh -c 'echo "\nexport PATH=$PATH:/home/craig/eclipse/luna/" >> /etc/environment'
