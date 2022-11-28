#!/bin/bash


varmac=$(ip -o link show dev eth0 | grep -Po 'ether \K[^ ]*' | sed 's/://g')

sed -i "12c\[$varmac]" /opt/frpc/frpc.ini
sed -i "16c\subdomain = $varmac" /opt/frpc/frpc.ini



#Find used network interface: route | grep '^default' | grep -o '[^ ]*$'
#Print MAC Address from used network interface: ip -o link show dev enp3s0| grep -Po 'ether \K[^ ]*'
