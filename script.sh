#! /bin/sh

echo "Atualizando Servidor"
apt update
apt upgrade -y
apt install apache2 -y
apt install unzip -y
apt install wget -y
apt install systemctl -y
cd /tmp

echo "Baixando e copiando arquivos da aplicação"
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

echo "Reiniciando apache"
systemctl restart apache2
cp linux-site-dio-main/* -r /var/www/html/

