#!/bin/bash
# lista09_script2.sh
# Autenticação Usuario 5 segundos.
clear
echo
echo "Informe Nome do Usuário. Você tem 5 segundos!"
read -p "Nome do Usuário: " name
read -s -p "Senha do Usuário:" pswd ; echo
read -s -p "Informe código de segurança até 8 digitos: " -n 8 code
echo
echo -e "Informações cadastradas com sucesso!"
echo -e "Ususário: $name \nSenha: $pswd \nCódigo: $code "
