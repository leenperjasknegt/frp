#!/bin/bash

###################################################################
# Installation script for FRP Proxy.                              #                                                                                                                                                                                     
# Author: JL                                                      #                            
###################################################################

echo
echo "###################################################################"
echo "Downloading files ..."
echo "###################################################################"
echo

curl -o /opt/frpc -u z8xcliP5486O:z8xcliP5486O http://install.proxyrelay.be/AMD64/frpc.tar.gz

echo
echo "###################################################################"
echo "Installing ..."
echo "###################################################################"
echo

tar -xvf /opt/frpc -C /opt

mv /opt/frpc/systemd/frpc.service /etc/systemd/system/frpc.service

systemctl daemon-reload
systemctl enable frpc.service
systemctl start frpc.service
systemctl status frpc.service

echo
echo
echo "###################################################################"
echo "GO TO: x.x.x.x:7400 to change settings"
echo "###################################################################"
echo

