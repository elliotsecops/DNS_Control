# Script de control de DNS

## Resumen

Este repositorio contiene un script bash diseñado para actualizar la configuración de DNS en sistemas Linux. El propósito principal de este script es mejorar la privacidad y seguridad permitiendo a los usuarios cambiar fácilmente entre diferentes servidores DNS, como `9.9.9.9` (Quad9), conocido por su enfoque en privacidad.

## Características

- **Cambio sencillo de DNS**: Permite a los usuarios modificar rápidamente el servidor DNS para mejorar la privacidad y seguridad.
- **Copia de seguridad de la configuración original**: Antes de realizar cambios, el script crea una copia de seguridad del archivo `/etc/resolv.conf` original. Esto asegura que los usuarios puedan revertir fácilmente a la configuración DNS original si es necesario.  
- **Enfoque en privacidad y seguridad**: Al usar servidores DNS enfocados en privacidad como Quad9, este script ayuda a proteger las actividades en línea de los usuarios de potenciales vigilancias y recolección de datos.

## Uso

1. **Clone el repositorio**: Primero, clona este repositorio en tu máquina local.
   ```bash
   git clone https://github.com/elliotsecops/DNS_Control.git
   ```

2. **Navega hasta el directorio del script**: Cambia al directorio que contiene el script.
   ```bash
   cd DNS_Control
   ```

3. **Hacer ejecutable el script**: Asegúrate de que el script es ejecutable.
   ```bash
   chmod +x dns_control.sh
   ```

4. **Ejecutar el Script**: Ejecuta el script con `sudo` para aplicar los cambios.
   ``bash
   sudo ./dns_control.sh
   ```
   Esto actualizará `/etc/resolv.conf` para utilizar el servidor DNS especificado en el script (`9.9.9.9` por defecto).

Si deseas usar un servidor DNS diferente, puedes modificar la variable `dns_server` en el script.

## Restaurar la configuración DNS original

Si necesitas revertir a la configuración DNS original, puedes restaurar la copia de seguridad creada por el script.

## Colaborar

¡Se aceptan colaboraciones! Si tienes sugerencias de mejora o encuentras algún problema, abre un issue o envía un pull request.

---

##EN

# DNS Control Script

## Overview

This repository contains a bash script designed to update the DNS settings on a Linux system. The primary purpose of this script is to enhance privacy and security by allowing users to easily switch between different DNS servers, such as `9.9.9.9` (Quad9), which is known for its privacy-focused approach.

## Features

- **Easy DNS Switching**: Allows users to quickly change their DNS server to enhance privacy and security.
- **Backup of Original Configuration**: Before making any changes, the script creates a backup of the original `/etc/resolv.conf` file. This ensures that users can easily revert to their original DNS settings if needed.
- **Privacy and Security Focus**: By using privacy-focused DNS servers like Quad9, this script helps protect users' online activities from potential surveillance and data collection.

## Usage

1. **Clone the Repository**: First, clone this repository to your local machine.
   ```bash
   git clone https://github.com/elliotsecops/DNS_Control.git
   ```

2. **Navigate to the Script Directory**: Change to the directory containing the script.
   ```bash
   cd DNS_Control
   ```

3. **Make the Script Executable**: Ensure the script is executable.
   ```bash
   chmod +x dns_control.sh
   ```

4. **Run the Script**: Execute the script with `sudo` to apply the changes.
   ```bash
   sudo ./dns_control.sh
   ```
   This will update `/etc/resolv.conf` to use the DNS server specified in the script (`9.9.9.9` by default).

## Customization

If you wish to use a different DNS server, you can modify the `dns_server` variable in the script.

## Restoring Original DNS Settings

If you need to revert to the original DNS settings, you can restore the backup created by the script.

```bash
sudo cp /etc/resolv.conf.backup /etc/resolv.conf
```

## Contributing

Contributions are welcome! If you have suggestions for improvements or encounter any issues, please open an issue or submit a pull request.
