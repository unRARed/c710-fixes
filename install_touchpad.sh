# may need to run files/patches.sh here first
sudo add-apt-repository  ppa:hugegreenbug/cmt
sudo apt-get update
sudo apt-get install -y libevdevc
sudo apt-get install -y libgestures
sudo apt-get install xf86-input-cmt

sudo mv /usr/share/X11/xorg.conf.d/50-synaptics.conf /usr/share/X11/xorg.conf.d/50-synaptics.conf.old
sudo cp /usr/share/xf86-input-cmt/50-touchpad-cmt-peppy.conf /usr/share/X11/xorg.conf.d/
sudo mv /usr/share/X11/xorg.conf.d/20-mouse.conf /usr/share/X11/xorg.conf.d/20-mouse.conf.old

sudo cp files/modules /etc/modules

cp files/.xsessionrc ~/
source ~/.xsessionrc
