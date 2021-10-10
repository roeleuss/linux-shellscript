#!/bin/bash

####################################################
# Instala git no ubuntu20.04 (wsl2)
####################################################

if [ -z $1 ]; then
    echo "First parameter (user.email) is required."
    exit 1
fi

if [ -z $2 ]; then
    echo "Second parameter (user.name) is required."
    exit 1
fi

sudo apt install -y git-all

# Configura nome e email do usuário global
git config --global user.email $1
git config --global user.name $2

# Configura o git com o email e nome do usuário global, important para salvar o token
git config --global credential.helper store