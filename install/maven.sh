export MAVEN_HOME=/usr/lib/apache/maven/3.3.1
export FILE=apache-maven-3.3.1-bin.tar.gz

sudo mkdir -p $MAVEN_HOME
cd $MAVEN_HOME
sudo wget http://mirrors.ibiblio.org/apache/maven/maven-3/3.3.1/binaries/$FILE
sudo tar -zxvf $FILE
sudo mv apache-maven-3.3.1/* .
sudo rm -rf apache-maven-3.3.1