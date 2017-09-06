echo -e [Changing deafult pi password-----------------------------------------------------]
echo ""
echo ""
	#passwd
echo ""
echo ""
echo -e [Updating apt sources-------------------------------------------------------------]
echo ""
echo ""
	sudo apt-get update
echo ""
echo ""
echo -e [installing pure data and git-----------------------------------------------------]
echo ""
echo ""
	sudo apt-get --assume-yes install puredata git
echo ""
echo ""
echo -e [Updating Submodules--------------------------------------------------------------]
echo ""
echo ""
	git submodule update --init --recursive
echo "" 
echo ""
#echo -e [Installing cmake----------------------------------------------------------------]
#echo ""
#echo ""
#echo ""#sudo apt-get install --assume-yes cmake
echo -e [building abl_link----------------------------------------------------------------]
echo ""
echo ""
	(cd abl_link/external; make)
echo ""
echo ""
echo -e [getting and building raspap------------------------------------------------------]
echo ""
echo ""
	wget -q https://git.io/voEUQ -O /tmp/raspap && bash /tmp/raspap
echo ""
echo ""
echo -e [Update device configuration------------------------------------------------------]
echo ""
echo ""
	sudo cp --backup=numbered support/hostapd.conf /etc/hostapd/.
    sudo cp -r support/html/* /var/www/html/.
echo ""
echo ""
echo ""
#echo ""
#echo ""
#@TODO Setup main.pd to run on boot?
#echo ""
#echo ""
