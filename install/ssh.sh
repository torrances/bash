################################################################
##
## PURPOSE:
## download and install SSH
##
## HISTORY:
## 3:50 PM 4/21/2015 created 
##
## PREREQUSITES:
## <none>
##
################################################################

# install SSH
sudo apt-get \
  install -y \
    openssh-server

# this command will generate SSH keys
ssh-keygen -t dsa -P '' -f ~/.ssh/id_dsa

# add your key to the authorized_keys file
touch ~/.ssh/authorized_keys && chmod 600 ~/.ssh/authorized_keys  
cat ~/.ssh/id_dsa.pub >> ~/.ssh/authorized_keys