#!/bin/bash

# Para dar permiso, ejecutar primero:
# chmod +x sleep.sh

echo "----------------"
echo "Suspender MacOs."
echo "----------------"
read -p "Ingresar tiempo [min]:" minutes
seconds=$((minutes * 60))
echo "Suspensión programada en: $minutes [min]."
sleep $seconds && pmset sleepnow
