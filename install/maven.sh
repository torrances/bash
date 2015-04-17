export MAVEN_HOME=/usr/lib/apache/maven/3.3.1
export FILE=apache-maven-3.3.1-bin.tar.gz

if hash mvn 2>/dev/null; 
    then
    echo "Maven is already Installed"
    mvn --version | grep "Apache Maven"
else
	
	sudo mkdir -p $MAVEN_HOME
	cd $MAVEN_HOME
	sudo wget http://mirrors.ibiblio.org/apache/maven/maven-3/3.3.1/binaries/$FILE
	sudo tar -zxvf $FILE
	sudo mv apache-maven-3.3.1/* .
	sudo rm -rf apache-maven-3.3.1

    #   provision the classpath
    sudo sh -c 'echo "export MAVEN_HOME=/usr/lib/apache/maven/3.3.1" >> /etc/environment'
    sudo sh -c 'echo "PATH=\"$PATH:/usr/lib/apache/maven/3.3.1/bin\"" >> /etc/environment'
    sudo sh -c 'echo "export PATH" >> /etc/environment'
fi