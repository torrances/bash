# Cloud Foundry command line interface
# <https://github.com/cloudfoundry/cli/releases>

export FILE=cf-cli_amd64.deb

wget https://cli.run.pivotal.io/stable?release=debian64&version=6.11.0&source=github-rel
mv stable\?release\=debian64 $FILE
sudo dpkg -i $FILE
sudo apt-get install -f -y
rm $FILE