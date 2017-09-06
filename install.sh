echo -e [Changing deafult pi password]
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
echo -e [building abl_link]
./abl_link/make
