#!/bin/bash
# {{ansible_managed | comment}}

ip link add dev wg1 type wireguard
wg setconf wg1 /etc/wireguard/wg1.conf
ip address add {{wg1_local_ipv4}}/32 dev wg1
ip link set up dev wg1
echo "nameserver {{wg1_dns_ip}}\n" | resolvconf -a wg1 -m 0 -x
