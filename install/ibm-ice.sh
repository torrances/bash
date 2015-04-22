################################################################
##
## PURPOSE:
## download and build IBM ICE (IBM Container Extension)
##
## HISTORY:
## 5:03 PM 4/20/2015 created 
##
## PREREQUSITES:
## 1. docker > 1.4
##
## ATTRIBUTIONS:
## prov:wasInfluencedBy <http://trimc-devops.blogspot.com/2015/03/configuring-python-development.html>
##
################################################################

sudo apt-get \
  install -y \
    curl

export ICE=icecli-2.0.zip
curl -O https://static-ice.ng.bluemix.net/$ICE

sudo pip \
  install \
    $ICE

ice version
rm $ICE