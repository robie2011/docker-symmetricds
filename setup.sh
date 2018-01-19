#!/bin/bash
# available enviroment variables:
# - url_jarsetup
# - url_autoinstall

echo "setup container ..."
echo "used install file: $url_jarsetup"
echo "used autoconfiguration file: $url_autoinstall"
echo "java version is ..."
java -version
echo "os version is ..."
uname -a

echo "****************"
echo "****************"
echo "****************"

cd /tmp
echo "downloading files and preventing progress information (can take some minutes)"
wget -O setup.jar -q $url_jarsetup
wget -O install.xml -q $url_autoinstall

java -jar setup.jar install.xml

echo "****************"
echo "****************"
echo "****************"

echo "Installation done. Starting service ..."
echo "webinterface: http://$(ip addr show eth0 | grep 'inet ' | cut -d: -f2 | awk '{ print $2}'| cut -d/ -f1):31415/"
"/opt/symmetric-ds/bin/sym"