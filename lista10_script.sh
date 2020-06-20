#!/bin/bash
#lista10_script.sh
clear
echo "# AS FUNÇÕES DESTE SCRIPT DEVEM SER EXECUTADOS PELO ROOT "
sleep 1; clear

Login(){
echo; read -s -p " Digite sua senha para continuar: " SENHA
if [ "${SENHA}" = "suasenha" ]; then
  clear; menu
else
  clear; continuar
fi
}

continuar(){
echo
read -p " Senha Invalida! Pressione Enter para continuar. " KEY
if [ "${KEY}" = "" ]; then
 clear; Login
else
  echo
  echo " Saindo... "; sleep 3; clear; exit
fi
}

menu(){
echo
echo "*********************************"
echo "* 1 - Identificar um Usuário    *"
echo "* 2 - Criar um Usuário          *"
echo "* 3 - Apagar um Usuário         *"
echo "* 4 - Sair                      *"
echo "*********************************"
echo
read -p " Digite a opção desejada: " OPT
case ${OPT} in
  1) id_user;;
  2) crt_user;;
  3) del_user;;
  4) sair;;
  *) erro;;
esac
}

id_user(){
read -p " Digite nome de usuario: " NOME
if grep -q ${NOME} /etc/passwd; then
  echo
  echo " Usuário ${NOME} identificado! "
  menu
else
  echo
  echo " Usuário ${NOME} não existe! "
  menu
fi
}

crt_user(){
read -p " Informe nome do usuário: " NOME
if grep -q ${NOME} /etc/passwd; then
  echo
  echo " Usuário ${NOME} já existe! "
  menu
else
  echo " Criando novo usuário... "
  useradd -d /home/${NOME} ${NOME}
  echo " Informe uma senha para o novo usuário: "
  passwd ${NOME}
  menu
fi
}

del_user(){
read -p " Informe nome do usuário para apagar: " NOME
if grep -q ${NOME} /etc/passwd; then
  echo; userdel ${NOME}
  rm -rf /home/${NOME}
  echo " Usuário ${NOME} apagado com sucesso! "
  menu
else
  echo; echo " Usuário ${NOME} não existe! "
  menu
fi
}

sair(){
clear
echo " Encerrando aplicação ... .. . "; sleep 1; clear; exit
}

erro(){
clear
echo " Opção incorreta! Tente novamente... ";
menu
}

Login
