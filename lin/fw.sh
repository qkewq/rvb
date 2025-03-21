#!/bin/bash
read -p "Port:" port
read -p "Proto:" proto

iptables -P INPUT DROP
iptables -P OUTPUT DROP
iptables -P FORWARD DROP
iptables -A INPUT -i lo -j ACCEPT
iptables -A INPUT -i lo -j ACCEPT

iptables -A INPUT ip $proto --dport $port -j ACCEPT
iptables -A OUTPUT ip $proto --sport $port -j ACCEPT
