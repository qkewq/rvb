#!/bin/bash
read -p "Port:" port
read -p "Proto:" proto

iptables -P INPUT DROP
iptables -P OUTPUT DROP
iptables -P FORWARD DROP

iptables -A INPUT -p $proto --dport $port -j ACCEPT
iptables -A OUTPUT -p $proto --sport $port -j ACCEPT
