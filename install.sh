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

