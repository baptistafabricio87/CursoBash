#!/bin/bash
# lista09_script1.sh 
# Fabricio B de Castro
# CONVERTE SEGUNDOS EM MINUTOS
clear
echo
read -p "Digite o tempo em segundos: " SEC
MIN=$[$SEC/60]
SEC=$[$SEC-$MIN*60]
HOR=$[$MIN/60]
MIN=$[$MIN-$HOR*60]
echo
echo "H->$HOR M->$MIN S->$SEC"
