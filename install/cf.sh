# Cloud Foundry command line interface
# <https://github.com/cloudfoundry/cli/releases>

export FILE=cf-cli_amd64.deb

wget https://cli.run.pivotal.io/stable?release=debian64&version=6.11.0&source=github-rel
mv stable\?release\=debian64 $FILE
sudo dpkg -i $FILE
sudo apt-get install -f -y
rm $FILE

## DISPLAY THE VERSION
## (eg. cf version 6.11.0-bba7fcf-2015-04-14T00:39:44+00:00)
echo && echo && echo "   *** cloudfoundry installation completed *** " && cf --version && echo && echo 