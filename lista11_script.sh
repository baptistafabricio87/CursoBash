#!/bin/bash
#lista11_script.sh

principal(){
clear;echo
read -p " Dê diretorio desde a raiz: " diretorio;
  if [ -d $diretorio ]; then
     cd $diretorio; pwd; echo
     arquivo
  else
     echo " Diretorio não existe! "
     echo " Tente novamente. "; sleep 1; principal
  fi
}

arquivo(){
read -p " Dê o nome do arquivo: " arq; echo
  if [ -e  $arq ]; then
     cat $arq; colocaX
  else
     echo " Arquivo não existe! "; sleep 1
  fi
}

colocaX(){
echo " Colocando X na frente e atras de cada palavra do texto de: $arq "
echo; cont=1
for i in $(cat $arq); do
  cont=$((cont+1))
  echo -n " X${i}X "
done
echo
}
principal
