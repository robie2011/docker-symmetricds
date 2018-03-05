#!/bin/bash

echo "webinterface: http://$(ip addr show eth0 | grep 'inet ' | cut -d: -f2 | awk '{ print $2}'| cut -d/ -f1):31415/"
# service will be started automatically
service SymmetricDS start
tail -F /opt/symmetric-ds/logs/symmetric.log