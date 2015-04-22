################################################################
##
## PURPOSE:
## download and install pip
## pip is a package management system used to install and manage software packages written in Python. 
## <http://trimc-devops.blogspot.com/2015/03/configuring-python-development.html>
##
## HISTORY:
## 1:37 PM 4/22/2015 created 
##
## PREREQUSITES:
## <none>
##
################################################################

sudo apt-get \
  install -y \
    build-essential \
    python-dev 

# this fixes a bug I was getting:
# "ImportError: cannot import name IncompleteRead"
# <http://askubuntu.com/questions/561377/pip-wont-run-throws-errors-instead>
sudo apt-get \
  purge -y \
    python-pip

# install the latest version directly from github
wget https://raw.github.com/pypa/pip/master/contrib/get-pip.py
sudo python get-pip.py