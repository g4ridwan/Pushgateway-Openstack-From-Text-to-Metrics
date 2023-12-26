#!/bin/bash
## Load "stackrc" to Session
source /root/script-metrics/Your_StackRC
## Wait for Openstack StackRC to load
sleep 3
## Write Output to File
openstack server list --all-projects --host Server01 -c Name -f csv | awk -F '","' 'NR>1{gsub(/"/, ""); print $1}' | sed 's/\[//;s/\]//' > /root/script-metrics/Server01
openstack server list --all-projects --host Server02 -c Name -f csv | awk -F '","' 'NR>1{gsub(/"/, ""); print $1}' | sed 's/\[//;s/\]//' > /root/script-metrics/Server02
openstack server list --all-projects --host Server03 -c Name -f csv | awk -F '","' 'NR>1{gsub(/"/, ""); print $1}' | sed 's/\[//;s/\]//' > /root/script-metrics/Server03
openstack server list --all-projects --host Server04 -c Name -f csv | awk -F '","' 'NR>1{gsub(/"/, ""); print $1}' | sed 's/\[//;s/\]//' > /root/script-metrics/Server04
openstack server list --all-projects --host Server05 -c Name -f csv | awk -F '","' 'NR>1{gsub(/"/, ""); print $1}' | sed 's/\[//;s/\]//' > /root/script-metrics/Server05
## Using "sed" to delete space,symbols,character,dll
## Exit
exit
