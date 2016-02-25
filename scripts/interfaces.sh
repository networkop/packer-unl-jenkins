#!/bin/bash

cat << EOF > /etc/network/interfaces

# NAT'ed interface
auto pnet0
iface pnet0 inet dhcp
    bridge_ports eth1
    bridge_stp off

# Cloud devices
auto pnet1
iface pnet1 inet dhcp
    bridge_ports eth0
    bridge_stp off

EOF

if [ $? -eq 0 ]; then
    echo "DONE"
else
    echo "INTERFACE CONFIGURATION FAILED"
fi