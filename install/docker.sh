# add the Docker repository key to your local keychain: 
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 36A1D7869245C8950F966E92D8576A8BA88D21E9

# add the Docker repository to your apt sources list: 
sudo sh -c "echo deb https://get.docker.com/ubuntu docker main > /etc/apt/sources.list.d/docker.list"

# prior to using any Ubuntu-maintained package installation, ensure existing packages are up to date: 
sudo apt-get update

# install the Docker-LXC package: 
sudo apt-get install lxc-docker -y

# install docker compose
wget https://github.com/docker/compose/releases/download/1.1.0/docker-compose-$(uname -s)-$(uname -m)
mv docker-compose-$(uname -s)-$(uname -m) docker-compose
sudo chmod 777 docker-compose
sudo mv docker-compose /usr/local/bin/
docker-compose --version