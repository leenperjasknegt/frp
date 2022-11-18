#!/bin/bash


varmac=$(ip -o link show dev eth0 | grep -Po 'ether \K[^ ]*' | sed 's/://g')

sed -i "12c\[$varmac]" /opt/frpc/frpc.ini
sed -i "16c\subdomain = $varmac" /opt/frpc/frpc.ini
