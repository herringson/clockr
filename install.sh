echo -e [Changing deafult pi password]
#passwd
echo ""
echo ""
echo -e [Updating apt sources]
sudo apt-get update
echo ""
echo ""
echo -e [installing pure data and git]
sudo apt-get --assume-yes install puredata git
echo ""
echo ""
echo -e [Updating Submodules]
echo ""
echo ""
git submodule update --init --recursive
echo "" 
echo ""
#@TODO do we actually need cmake?
#echo -e [Installing cmake]
#sudo apt-get install --assume-yes cmake
echo -e [building abl_link]
(cd abl_link/external; make)
echo ""
echo ""
echo -e [getting and building raspap]
wget -q https://git.io/voEUQ -O /tmp/raspap && bash /tmp/raspap
echo ""
echo ""
echo -e [Update device configuration]
    sudo cp --backup=numbered support/hostapd.conf /etc/hostapd/.
    sudo cp -r support/html/* /var/www/html/.
    echo ""
echo ""
echo ""

#@TODO Setup main.pd to run on boot

