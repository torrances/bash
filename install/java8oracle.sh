################################################################
##
## PURPOSE:
## download and install Oracle Java 8
##
## HISTORY:
## 3:50 PM 4/21/2015 created 
##
## PREREQUSITES:
## <none>
##
################################################################

# make sure the apt-add-repository in the next section works properly
sudo apt-get \
  install -y \
    software-properties-common \
    python-software-properties

# add the oracle repository
sudo apt-add-repository \
  ppa:webupd8team/java

# update
sudo apt-get \
  update

# install oracle java
sudo apt-get \
  install -y \
    oracle-java8-installer

# correct the "'No such file or directory' when invoking java" error that occurs in some ubuntu configurations
sudo apt-get \
  install -y \
    libc6-i386