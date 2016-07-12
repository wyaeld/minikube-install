#!/bin/sh

# list networks
virsh net-list

cat << EOF > /tmp/default-network-libvirt.xml
<network>
  <name>default</name>
  <bridge name='virbr99'/>
  <forward mode="route" />
  <ip address='192.168.99.1' netmask='255.255.255.0'/>
</network>
EOF

virsh net-define --file /tmp/default-network-libvirt.xml