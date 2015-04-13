init() {
	sudo apt-get update -y
	sudo apt-get upgrade -y
	sudo apt-get autoremove -y
}

install_glances() {
	sudo apt-get install python-pip build-essential python-dev
	sudo pip install Glances
	sudo pip install PySensors
}

install_sublime3() {
	sudo add-apt-repository ppa:webupd8team/sublime-text-3
	sudo apt-get update -y
	sudo apt-get install sublime-text -y
}

install_ssh() {
   
    # install SSH
       sudo apt-get install openssh-server -y

    # generate key
    if [ ! -f ~/.ssh/id_dsa ]; 
        then
        echo "*Generating SSH key ..."
        ssh-keygen -t dsa -P '' -f ~/.ssh/id_dsa
    else
        echo "!SSH key already generated"
    fi

    # authorized key ring
    if [ ! -f ~/.ssh/authorized_keys ]; 
        then
        echo "*Creating public authorized keys list ..."
        touch ~/.ssh/authorized_keys && chmod 600 ~/.ssh/authorized_keys
        cat ~/.ssh/id_dsa.pub >> ~/.ssh/authorized_keys
    else
        echo "!Authorized public key list already exists"
    fi
}

install_java() {
    if hash java 2>/dev/null;
        then
        echo "Java is already installed"
        java -version
    else
        # add the missing add-apt-repository command (rasberry pi)
        sudo apt-get install software-properties-common python-software-properties -y
        sudo apt-add-repository ppa:webupd8team/java -y
        sudo apt-get update -y
        sudo apt-get install oracle-java8-installer -y
    fi
}

install_git() {
    if hash git 2>/dev/null;
        then
        echo "Git is already installed"
        git --version
    else
        sudo apt-get install git -y
        git config --global user.email "torranceslauson@yahoo.com"
		git config --global user.name "Torrances Slauson"
    fi
}

install_maven() {
	MAVEN_HOME=/usr/lib/apache/maven/3.2.5
    if hash mvn 2>/dev/null; 
        then
        echo "Maven is already Installed"
        mvn --version | grep "Apache Maven"
    else
        #   create the directories
        sudo mkdir -p $MAVEN_HOME
        #   download and extract the files
        cd $MAVEN_HOME
        sudo wget http://mirrors.koehn.com/apache/maven/maven-3/3.2.5/binaries/apache-maven-3.2.5-bin.tar.gz
        sudo tar -zxvf apache-maven-3.2.5-bin.tar.gz
        #   massage the directory structure and cleanup
        sudo rm apache-maven-3.2.5-bin.tar.gz
        sudo mv apache-maven-3.2.5/* .
        sudo rm -rf apache-maven-3.2.5/
    fi
}

install_hadoop() {

    HADOOP_HOME="/usr/lib/apache/hadoop/2.6.0"

    # modify classpath and directory structures
    if [ -d "$HADOOP_HOME" ]; 
        then
        echo "Hadoop environment variables already set"
    else

        # create directories
        sudo mkdir -p $HADOOP_HOME

        # create HADOOP_DATA_DIR
        mkdir -p ~/HADOOP_DATA_DIR/data
        mkdir -p ~/HADOOP_DATA_DIR/local
        mkdir -p ~/HADOOP_DATA_DIR/name
    
        # download and unzip the binary
        cd $HADOOP_HOME
        sudo wget http://mirror.reverse.net/pub/apache/hadoop/common/hadoop-2.6.0/hadoop-2.6.0.tar.gz
        sudo tar -zxvf hadoop-2.6.0.tar.gz
        sudo mv hadoop-2.6.0/* .
        sudo rm -rf hadoop-2.6.0
        sudo rm hadoop-2.6.0.tar.gz

        # modify hosts file
        sudo sh -c 'echo "192.168.1.70\tmaster" >> /etc/hosts'
    fi
}

update_hostname() {
    # this is likely not necessary if the proper hostname was set during installation ...
    # sudo sh -c 'echo "dn05" > /etc/hostname'
    echo "TODO: Check the '/etc/hostname' file ..."
}

update_environment() {
    sudo sh -c 'echo "# ------------- auto-updated $(date +%D) $(date +%r) -------------" > /etc/environment'

    sudo sh -c 'echo "\nexport PATH=\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/apache/hadoop/2.6.0/bin/:/usr/lib/apache/hadoop/2.6.0/sbin/:/usr/lib/apache/maven/3.2.5/bin:/usr/lib/apache/maven/3.2.5/bin\"" >> /etc/environment'

    sudo sh -c 'echo "\n# MAVEN" >> /etc/environment'
    sudo sh -c 'echo "export MAVEN_HOME=/usr/lib/apache/maven/3.2.5" >> /etc/environment'

    sudo sh -c 'echo "\n# HADOOP ENVIRONMENT VARIABLES" >> /etc/environment'
    sudo sh -c 'echo "export HADOOP_HOME=/usr/lib/apache/hadoop/2.6.0" >> /etc/environment'
    sudo sh -c 'echo "export HADOOP_CONF_DIR=$HADOOP_HOME/conf" >> /etc/environment'
    sudo sh -c 'echo "export HADOOP_LOG_DIR=$HADOOP_HOME/logs" >> /etc/environment'
    sudo sh -c 'echo "export HADOOP_DATA_DIR=~/HADOOP_DATA_DIR" >> /etc/environment'

    sudo sh -c 'echo "\n# OTHER" >> /etc/environment'
    sudo sh -c 'echo "export WSSAN=/home/craig/workspaces/swtk/sandbox/projects/swtk-sandbox/sandbox-bash" >> /etc/environment'

    # update the .bashrc file ...
    if cat ~/.bashrc | grep -Fxq "source /etc/environment"
        then
        echo "!bashrc already updated"
    else
        echo "*updating bashrc file"
        echo "# auto-inserted $(date +%D) $(date +%r)" >> ~/.bashrc
        echo "source /etc/environment" >> ~/.bashrc    
    fi
}

update_launchers() {
    # prov:wasInfluencedBy <http://askubuntu.com/questions/237024/how-to-delete-unity-default-launchers>
    # unpins all the applications for the current user ...
    gsettings set com.canonical.Unity.Launcher favorites '[]'
    # adds the default applications to the launcher that we've defined in our own file ...
    gsettings set com.canonical.Unity.Launcher favorites "$(cat .default_locked_launchers)"
}

update_screen() {
    # prov:wasInfluencedBy <http://askubuntu.com/questions/177348/how-do-i-disable-the-screensaver-lock>
    # disables the screen blackout:
    gsettings set org.gnome.desktop.session idle-delay 0
    # disables the screen lock:
    gsettings set org.gnome.desktop.screensaver lock-enabled false
}

update_lid_behavior() {
    #
    #   If the Laptop lid is closed, don't put the computer to sleep
    #
    if cat /etc/systemd/logind.conf | grep -Fxq "HandleLidSwitch=ignore"
        then
        echo "!logind file already updated"
    else
        echo "*Updating logind file"
        sudo sh -c 'echo "HandleLidSwitch=ignore" >> /etc/systemd/logind.conf'
    fi
}

update_text_scaling() {
    # prov:wasQuotedFrom <http://askubuntu.com/questions/440958/is-there-any-way-to-set-the-display-scaling-back-to-default-other-than-from-the>
    gsettings reset org.gnome.desktop.interface scaling-factor # same as '1.0'
    gsettings set com.canonical.Unity.Interface text-scale-factor 0.875
    gsettings set org.gnome.desktop.interface text-scaling-factor 0.875
}

reboot() {
	sudo reboot systemd-logind
}

# run the installation scripts
init
install_sublime3
install_ssh
install_java
install_git
install_maven
install_hadoop
update_environment
update_launchers
update_screen
update_lid_behavior
update_text_scaling