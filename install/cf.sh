################################################################
##
## PURPOSE:
## download and install Cloud Foundry command line interface
## <https://github.com/cloudfoundry/cli/releases>
##
## HISTORY:
## 5:03 PM 4/20/2015 created 
##
## PREREQUSITES:
## <none>
##
## TODO:
## 1. script does not always work; seems to hang after wget ...
##
################################################################
sudo apt-get \
  install -y \
    wget

export FILE=cf-cli_amd64.deb
wget -O \
  cf-cli_amd64.deb \
    https://cli.run.pivotal.io/stable?release=debian64&version=6.11.0&source=github-rel

sudo dpkg -i \
  cf-cli_amd64.deb

sudo apt-get \
  install -f -y

rm $FILE