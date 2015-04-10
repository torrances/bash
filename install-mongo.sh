# reference
#	<http://trimc-db.blogspot.com/2015/01/installing-mongodb-on-ubuntu-1404.html>
# edited
# 	5:46 PM 4/6/2015

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list
sudo apt-get update
sudo apt-get install mongodb-org -y

# comment out the bind_ip line in /etc/mongod.conf
## sudo sh -c "cat /etc/mongod.conf | sed s/bind_ip/#bind_ip/ > /etc/mongod.conf"
# ... 	I wish I knew how to to this in one line
# 		but if I use the above command it wipes out the entire file
#		this seems to work OK in the interim
cat /etc/mongod.conf | sed s/bind_ip/#bind_ip/ > ~/mongod.conf
sudo mv ~/mongod.conf /etc/mongod.conf 

# create the data directory
sudo mkdir -p /data/db

# restart the service
sudo service mongod restart