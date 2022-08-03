#!/bin/bash

# Etapa 1 - atualizar o servidor
apt update -y
apt upgrade -y

# Etapa 2 - instalar o apache2
apt install apache2 -y

# Etapa 3 - instalar o unzip
apt install unzip -y

# Etapa 4 - fazer download e instalar a aplicação
wget -P /tmp https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip -q /tmp/main.zip -d /tmp
cp -r /tmp/linux-site-dio-main/* /var/www/html/

# Etapa 5 - Cleanup
rm -f /tmp/main.zip
rm -rf /tmp/linux-site-dio-main

# Fim do script

