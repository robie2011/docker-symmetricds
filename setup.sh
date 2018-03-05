#!/bin/bash

apt-get update && apt-get install wget nano less -y

echo "setup container ..."
echo "java version is ..."
java -version
echo "os version is ..."
uname -a

cd /tmp
java -jar setup.jar install.xml

/opt/symmetric-ds/bin/sym_service install
echo "Installation done"