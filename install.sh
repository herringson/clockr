echo -e [Changing deafult pi password]
echo ""
echo ""
	#passwd
echo ""
echo ""
echo -e [Updating apt sources]
echo ""
echo ""
	sudo apt-get update
echo ""
echo ""
echo -e [installing pure data and git]
echo ""
echo ""
	sudo apt-get --assume-yes install puredata git
echo ""
echo ""
echo -e [Updating Submodules]
echo ""
echo ""
	git submodule update --init --recursive
echo "" 
echo ""
echo -e [building abl_link]
echo ""
echo ""
	(cd abl_link/external; make)
echo ""
echo ""
echo ""
echo ""
echo -e [Adding launchpd.sh to rc.local]
	(sudo cd config_files; cp rc.local /etc/rc/local)
echo ""
echo ""
echo -e [Installing wpa_supplicant.conf -> /etc/wpa_supplicant]
	(sudo cd config_files; cp wpa_supplicant.conf /etc/wpa_supplicant)	

