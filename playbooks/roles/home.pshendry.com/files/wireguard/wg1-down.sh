#!/bin/bash
# {{ansible_managed | comment}}

ip link delete dev wg1
resolvconf -d wg1 -f
