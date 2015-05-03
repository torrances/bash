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

# overview
# bum, boot-up utility manager, launch with "sudo bum"
# glances, system usage overview window, launch with "glances"
# tree, ascii tree output of directory at any location on terminal, launch with "tree"
# libgnome2-bin, open a gnome window from any location on terminal, launch with "gnome-open ."
sudo apt-get \
  install -y \
    bum \
    glances \
    tree \
    libgnome2-bin

# update .bashrc
sh -c 'echo "\nsource /etc/environment" >> ~/.bashrc'
sh -c 'echo "\nalias opn=\"gnone-open .\"" >> ~/.bashrc'