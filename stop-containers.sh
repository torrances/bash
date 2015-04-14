# stop all docker containers
# <https://coderwall.com/p/ewk0mq/stop-remove-all-docker-containers>
sudo docker stop $(sudo docker ps -a -q)
sudo docker rm $(sudo docker ps -a -q)