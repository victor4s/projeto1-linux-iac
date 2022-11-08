#!/bin/bash

echo "Criando diretórios........"
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos........."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários......."
useradd carlos -m -s /bin/bash -p $(openssl passwd -1 senha123)
useradd maria -m -s /bin/bash -p $(openssl passwd -1 senha123)
useradd joao -m -s /bin/bash -p $(openssl passwd -1 senha123)
useradd debora -m -s /bin/bash -p $(openssl passwd -1 senha123)
useradd sebastina -m -s /bin/bash -p $(openssl passwd -1 senha123)
useradd roberto -m -s /bin/bash -p $(openssl passwd -1 senha123)
useradd josefina -m -s /bin/bash -p $(openssl passwd -1 senha123)
useradd amanda -m -s /bin/bash -p $(openssl passwd -1 senha123)
useradd rogerio -m -s /bin/bash -p $(openssl passwd -1 senha123)

echo "Adicionando usuários em seus respectivos grupos........."
usermod -G GRP_ADM carlos
usermod -G GRP_ADM maria
usermod -G GRP_ADM joao
usermod -G GRP_VEN debora
usermod -G GRP_VEN sebastina
usermod -G GRP_VEN roberto
usermod -G GRP_SEC josefina
usermod -G GRP_SEC amanda
usermod -G GRP_SEC rogerio

echo "Atribuindo previlégios aos diretórios......"
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico/
chmod 770 /adm/
chmod 770 /ven/
chmod 770 /sec/

echo "Finalizando SCRIPT..........."
