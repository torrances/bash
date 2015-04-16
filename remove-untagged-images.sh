# <http://jimhoskins.com/2013/07/27/remove-untagged-docker-images.html>
sudo docker rmi $(sudo docker images | grep "^<none>" | awk "{print $3}")