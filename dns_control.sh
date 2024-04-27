#!/bin/bash

sudo sed -i 's/::1/9.9.9.9/' /etc/resolv.conf

# Mensajes y cat
echo "Se han agregado las siguientes líneas al archivo de configuración:"
echo "nameserver 9.9.9.9"

echo "Contenido actualizado del archivo de configuración:"
cat /etc/resolv.conf

