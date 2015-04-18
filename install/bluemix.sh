#./update-and-clear.sh
#./python/pip.sh
#./python/setuputils.sh
#./docker.sh

#./ibm-ice.sh
#./cf.sh

# Ensure that the following variable is set: DOCKER_TLS_VERIFY=1
# <https://www.ng.bluemix.net/docs/#starters/index-gentopic3.html#container>
#sudo sh -c 'echo "export DOCKER_TLS_VERIFY=1" >> /etc/environment'

# by default, the ice commands must be run with root authentication and therefore, require the prefix sudo. If you want to run docker and ice commands without sudo, run the following command, 
# where <CURRENT_USER> is the name of the current user, then, if you are on Linux, you must log out then log back in again.
#sudo usermod -a -G docker $(whoami)