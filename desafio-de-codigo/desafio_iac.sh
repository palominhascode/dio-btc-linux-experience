#!/bin/bash

echo "Criando diretorios..."

mkdir /desafio-iac/public
mkdir /desafio-iac/adm
mkdir /desafio-iac/ven
mkdir /desafio-iac/sec

echo "Criando grupo de users..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando users"

useradd carlos -m -c "Carlos Adm" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd maria -m -c "Maria Adm" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd joao -m -c "João Adm" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd debora -m -c "Debora Vendas" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd sebastiana -m -c "Sebastiana Vendas" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd roberto -m -c "Roberto Vendas" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd josefina -m -c "Josefina Sec" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd amanda -m -c "Amanda Sec" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd rogerio -m -c "Rogerio Sec" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "Atribuindo permissões"

chown root:GRP_ADM /desafio-iac/adm
chown root:GRP_VEN /desafio-iac/ven
chown root:GRP_SEC /desafio-iac/sec

chmod 770 /desafio-iac/adm
chmod 770 /desafio-iac/ven
chmod 770 /desafio-iac/sec
chmod 777 /desafio-iac/public

echo "Fim de execução"

