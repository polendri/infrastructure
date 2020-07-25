#!/bin/bash
# {{ansible_managed | comment}}

ip rule delete from 0/0 to 0/0 table 200
ip route flush cache
ip link delete dev wg1
resolvconf -d wg1 -f
