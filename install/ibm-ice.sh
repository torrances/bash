# Before you can create a container in Bluemix, you must install the IBM Containers Extension.
# <http://trimc-devops.blogspot.com/2015/03/configuring-python-development.html>

sudo apt-get \
  install -y \
    curl

export ICE=icecli-2.0.zip

curl -O https://static-ice.ng.bluemix.net/$ICE
sudo pip install $ICE