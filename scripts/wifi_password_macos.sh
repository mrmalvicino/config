#!/bin/bash

# Para dar permiso, ejecutar primero:
# chmod +x get_wifi_password.sh

echo "------------------"
echo " Get WiFi Password"
echo "------------------"

read -p "Enter network name: " network_name
echo "Getting password for \"$network_name\"..."

sudo security find-generic-password -ga "$network_name" 2>&1 | grep "password:"
