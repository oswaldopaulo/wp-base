#!/bin/bash

echo "Atualizando o servidor..."
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y


echo "Baixando e copiando os arquivos da aplicação..."

cd /tmp
wget https://github.com/oswaldopaulo/wp-base/archive/refs/heads/master.zip
unzip master.zip
cd wp-base-master
cp -R * /var/www/html/