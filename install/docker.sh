################################################################
##
## PURPOSE:
## download and install docker (and the docker-compose extension)
##
## HISTORY:
## 5:03 PM 4/20/2015 created 
##
## PREREQUSITES:
## <none>
##
################################################################

# add the Docker repository key to your local keychain: 
sudo apt-key \
  adv --keyserver \
  hkp://keyserver.ubuntu.com:80 --recv-keys \
  36A1D7869245C8950F966E92D8576A8BA88D21E9

# add the Docker repository to your apt sources list: 
sudo sh -c \
  "echo deb https://get.docker.com/ubuntu docker main > /etc/apt/sources.list.d/docker.list"

# prior to using any Ubuntu-maintained package installation, ensure existing packages are up to date: 
sudo apt-get \
  update

# install the Docker-LXC package: 
sudo apt-get \
  install -y \
    lxc-docker

# install docker compose
wget \
  https://github.com/docker/compose/releases/download/1.1.0/docker-compose-$(uname -s)-$(uname -m)

# rename and move the file with proper permissions
mv docker-compose-$(uname -s)-$(uname -m) \
  docker-compose
sudo chmod \
  777 docker-compose
sudo mv \
  docker-compose /usr/local/bin/

# bug fix for docker compoes
# <https://github.com/docker/compose/issues/88>
sudo sh -c \
  "\necho DOCKER_OPTS=\"-H tcp://127.0.0.1:4243 -H unix:///var/run/docker.sock\" >> /etc/default/docker"
sudo service docker restart

# display the version on the console
docker-compose --version