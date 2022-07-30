#!/bin/bash

echo "Criando diretórios..."

mkdir /adm
mkdir /ven
mkdir /sec
mkdir /publico

echo "Diretórios criados com sucesso na raiz!"


echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Grupo de usuários criado com sucesso!"

echo "Criando usuários e adicionando aos seus respectivos setores..."

useradd carlos -m -c "Carlos ADM" -s /bin/bash -G GRP_ADM 
echo "*Usuário Carlos criado*"
useradd maria -m -c "Maria ADM" -s /bin/bash -G GRP_ADM 
echo "*Usuário Maria criado*"
useradd joao -m -c "João ADM" -s /bin/bash -G GRP_ADM 
echo "*Usuário João criado*"

useradd debora -m -c "Débora VEN" -s /bin/bash -G GRP_VEN 
echo "*Usuário Débora criado*"
useradd sebastiana -m -c "Sebastiana VEN" -s /bin/bash -G GRP_VEN 
echo "*Usuário Sebastiana criado*"
useradd roberto -m -c "Roberto VEN" -s /bin/bash -G GRP_VEN
echo "*Usuário Roberto criado*"

useradd josefina -m -c "Josefina SEC" -s /bin/bash -G GRP_SEC 
echo "*Usuário Josefina criado*"
useradd amanda -m -c "Amanda SEC" -s /bin/bash -G GRP_SEC 
echo "*Usuário Amanda criado*"
useradd rogerio -m -c "Rogério SEC" -s /bin/bash -G GRP_SEC 
echo "*Usuário Rogério criado*"

echo "Usuários criados com sucesso!"

chown root:GRP_ADM /adm

chown root:GRP_VEN /ven

chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "*-Procedimento finalizado-*"
