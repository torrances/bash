# remove libre office
sudo apt-get \
  remove --purge -y \
    libreoffice* \
    deja* \
    mahjong* \
    aisleriot* \
    sudoku* \
    mines* \
    simple-scan* \
    shotwell* \
    unity-lens* \
    empathy* \
    gdrive* \
    rhythymbox* \
    openjdk*

sudo apt-get \
  clean

sudo apt-get \
  autoremove -y

# boot-up utility manager
# launch with "sudo bum"
sudo apt-get \
  install -y \
    bum

# update .bashrc
sh -c 'echo "\nsource /etc/environment" >> ~/.bashrc'