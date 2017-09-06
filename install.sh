echo -e [Changing deafult pi password]
#passwd
echo ""
echo ""
echo -e [Updating apt sources]
sudo apt-get update
echo ""
echo ""
echo -e [installing pure data]
sudo apt-get --assume-yes install puredata
echo ""
echo ""
echo -e [Updating Submodules]
echo ""
echo ""
git submodule update --init --recursive
echo "" 
echo ""
echo -e [Installing cmake]
sudo apt-get install --assume-yes cmake
echo -e [building abl_link]
(cd abl_link/external; make)
echo ""
echo ""
echo -e [getting and buildin raspap]
wget -q https://git.io/voEUQ -O /tmp/raspap && bash /tmp/raspap

#@TODO Setup main.pd to run on boot

