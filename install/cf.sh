################################################################
##
## PURPOSE:
## download and install CloudFoundry (CF)
##
## HISTORY:
## 5:03 PM 4/20/2015 created 
##
## PREREQUSITES:
## <none>
##
################################################################
# Cloud Foundry command line interface
# <https://github.com/cloudfoundry/cli/releases>

sudo apt-get \
  install -y \
    wget

export FILE=cf-cli_amd64.deb
wget -O \
  $FILE \
    https://cli.run.pivotal.io/stable?release=debian64&version=6.11.0&source=github-rel

sudo dpkg -i \
  $FILE

sudo apt-get \
  install -f -y

rm $FILE