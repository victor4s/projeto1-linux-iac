#!/bin/bash

echo "Atualizando o servidor...."
apt update
apt upgrade -y

echo "Instalando Apache...."
apt install apache2 -y

echo "Instalando unzip...."
apt install unzip -y

echo "Baixando e extraindo aplicação...."
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip -P /tmp
unzip /tmp/main.zip -d /tmp/

echo "Transferindo arquivos da aplicação para diretório padrão apache...."
cp /tmp/linux-site-dio-main/* -R /var/www/html/

echo "Finalizando criação de servidor Apache...."
