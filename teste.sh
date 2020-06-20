#!/bin/bash

read -p "digite usuario: " user_
teste=`users`
if [ id = $user_ ]; then
  echo "Nome de usuario $teste já existe"
else
  echo "Nome de usuário $user_ disponivel"
fi
