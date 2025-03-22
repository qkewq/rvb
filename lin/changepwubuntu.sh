#!/bin/bash
read -p "Password: " pw

names=("johncyberstrike" "joe" "jane" "janicecyberstrike" "strikesavior" "planetliberator" "haunterhunter" "vanguardprime" "roguestrike" "falconpunch" "specter" "antiterminite")
for (( i=0 ; i<12 ; i++ ));
do
  echo ${names[i]}:$pw | sudo chpasswd
done
