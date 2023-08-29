echo "###################"
echo "###################"
echo "I will start to build CBDB on Ubuntu! Don't stop me"
echo "###################"
echo "###################"
sleep 2

echo "###################"
echo "###################"
apt-get update

echo "###################"
echo "###################"
apt install -y git sudo

echo "###################"
echo "Clone CBDB"
sleep 2
git clone https://github.com/cloudberrydb/cloudberrydb.git

echo "###################"
echo "cd cloudberrydb"
echo "###################"
sleep 2
cd cloudberrydb

echo "###################"
echo "###################"
mv python-dependencies.txt readmes/

echo "###################"
echo "./README.ubuntu.bash"
echo "###################"
sleep 2
sudo ./readmes/README.Ubuntu.bash

echo "###################"
echo "###################"
sudo apt install -y software-properties-common
sudo add-apt-repository ppa:ubuntu-toolchain-r/test
sudo apt install -y gcc-10 g++-10
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-10 100

echo "###################"
echo "###################"
echo "./configure"
echo "###################"
echo "###################"
sleep 2
./configure --disable-orca --with-perl --with-python --with-libxml --prefix=/usr/local/cloudberrydb


echo "###################"
echo "make"
echo "###################"
sleep 2
make 

echo "###################"
echo "make install"
echo "###################"
sleep 2
make install

echo "###################"
echo "###################"
echo "Congratulations! Everythins goes well"
echo "###################"
echo "###################"