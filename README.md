# ES

Script de Control DNS

Este script permite controlar manualmente la configuración de DNS en una máquina Linux cuando no hay conectividad a internet.

Objetivo
Al desconectarse de la red, el sistema automáticamente define al loopback '::1' como servidor DNS, impidiendo resolver nombres. Este script permite cambiarlo de forma automática por otros servidores DNS priorizando la privacidad.

Uso
Descargar el archivo dns_control.sh
Otorgar permisos de ejecución: chmod +x dns_control.sh
Ejecutar el script: ./dns_control.sh
Recibe como parámetro la IP del servidor DNS a usar. De no proveerse, usa 9.9.9.9 de Quad9 DNS, conocido por su compromiso con la privacidad.

Funcionamiento
Usa sed para reemplazar la entrada de DNS en /etc/resolv.conf. Luego valida y muestra el cambio.

Consideraciones
Realiza cambios de forma no interactiva.
No realiza copia de seguridad de la configuración original.
Sólo aplica cambios cuando no hay conectividad.
Se puede envolver en service para automatizar ejecución.
Este script brinda una solución simple al problema de resolución de DNS al desconectarse. Es una buena base para automatizar y robustecer el manejo de DNS, especialmente considerando la privacidad.

# EN

DNS Control Script

This script allows manually controlling the DNS configuration on a Linux machine when there is no internet connectivity.

Purpose
When the system disconnects from the network, it automatically defines the loopback '::1' as the DNS server, preventing name resolution. This script allows changing it automatically to other DNS servers, prioritizing privacy.

Usage
Download the dns_control.sh file
Grant execution permissions: chmod +x dns_control.sh
Run the script: ./dns_control.sh
It accepts the IP of the DNS server to use as a parameter. If none is provided, it will use 9.9.9.9 from Quad9 DNS, known for its commitment to privacy.

Functionality
It uses sed to replace the DNS entry in /etc/resolv.conf. Then it validates and shows the change.

When reconnecting, the system will revert to '::1'. Run the script again if disconnected.

Considerations
Makes non-interactive configuration changes.
Does not back up the original configuration.
Only applies changes when offline.
Can be wrapped in a service to automate execution.
This script provides a simple solution to the DNS resolution problem when disconnecting. It's a good starting point to automate and strengthen DNS management, especially considering user privacy.
