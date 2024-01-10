#!/bin/bash

sudo sed -i 's/::1/1.1.1.1/' /etc/resolv.conf

# Mensajes y cat
echo "Se han agregado las siguientes líneas al archivo de configuración:"
echo "nameserver 1.1.1.1"

echo "Contenido actualizado del archivo de configuración:"
cat /etc/resolv.conf
