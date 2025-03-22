#!/bin/bash
read "Password: " pw

names=("root" "johncyberstrike" "joecyberstrike" "janecyberstrike" "janicecyberstrike" "strikesavior" "planetliberator" "haunterhunter" "vanguardprime" "roguestrike" "falconpunch" "specter" "antiterminite")
for (( i=0 ; i<13 ; i++ ));
do
  echo ${names[i]}:$pw | sudo chpasswd
done
