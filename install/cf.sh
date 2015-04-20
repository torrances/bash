# Cloud Foundry command line interface
# <https://github.com/cloudfoundry/cli/releases>

export FILE=cf-cli_amd64.deb
wget -O $FILE https://cli.run.pivotal.io/stable?release=debian64&version=6.11.0&source=github-rel
sudo dpkg -i $FILE
sudo apt-get install -f -y
rm $FILE