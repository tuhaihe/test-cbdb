echo "###################"
echo "###################"
echo "I will start to build CBDB on CentOS! Don't stop me"
echo "###################"
echo "###################"

echo "###################"
echo "###################"
echo "yum update && yum install -y git sudo"
yum update && yum install -y git sudo
sleep 2

echo "###################"
echo "###################"
echo "git clone cbdb"
sleep 2
git clone https://github.com/cloudberrydb/cloudberrydb.git

echo "###################"
cd cloudberrydb

echo "###################"
mv python-dependencies.txt readmes/
sleep 2

echo "###################"
sleep 2
./readmes/README.CentOS.bash

echo "###################"
sleep 2
yum -y install centos-release-scl

echo "###################"
echo "###################"
yum -y install devtoolset-10-gcc devtoolset-10-gcc-c++ devtoolset-10-binutils

echo "###################"
echo "###################"
scl enable devtoolset-10 bash
echo "###################"
echo "###################"
source /opt/rh/devtoolset-10/enable

sleep 2
echo "###################"
yum -y install R apr apr-devel apr-util automake autoconf bash bison bison-devel bzip2 bzip2-devel centos-release-scl curl flex flex-devel gcc gcc-c++ git gdb ibxml2 iproute krb5 krb5-devel less libcurl libcurl-devel libevent libevent-devel libxml2 libxml2-devel libyaml libzstd-devel libzstd.x86_64 make openldap openssh-client openssl openssl-devel openssl-libs perl python3-devel readline readline-devel rsync sed sudo tar vim wget which xerces-c-devel zip zip-devel zlib && \
echo "###################"
echo "###################"
yum -y install epel-release.noarch && \


echo "###################"
echo "###################"
yum -y install libzstd
sudo ln -sf /usr/bin/cmake3 /usr/local/bin/cmake

echo "###################"
echo "###################"
echo "./configure"
sleep 2
./configure --disable-orca --with-perl --with-python --with-libxml --prefix=/usr/local/cloudberrydb

echo "###################"
echo "###################"
echo "make"
sleep 2
make

echo "###################"
echo "###################"
echo "make install"
sleep 2
make install

echo "###################"
echo "###################"
echo "Congratulations! Everythins goes well"
echo "###################"
echo "###################"
