sudo mkdir –p /opt/eclipse/luna/
cd /opt/eclipse/luna

sudo wget http://ftp.osuosl.org/pub/eclipse//technology/epp/downloads/release/luna/SR2/eclipse-java-luna-SR2-linux-gtk-x86_64.tar.gz
tar -zxvf eclipse-java-luna-SR2-linux-gtk-x86_64.tar.gz

sudo mv eclipse e
sudo mv e/* .
sudo rm -rf e