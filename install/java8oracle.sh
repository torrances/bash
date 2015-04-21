if hash java 2>/dev/null;
    then
    echo "Java is already installed"
    java -version
else
	sudo mkdir -p /usr/lib/jvm/jdk/
	sudo mv ~/Downloads/jdk-8u31-linux-x64.tar.gz /usr/lib/jvm/jdk/
	cd /usr/lib/jvm/jdk/
	sudo tar -zxvf jdk-8u31-linux-x64.tar.gz
fi