#!/bin/bash

# this file must have the name post-receive

echo "Modificação recebida no repositório local..."
read refname
branch=$(git rev-parse --symbolic --abbrev-ref $refname)

if [ "master" = "$branch" ]; then
  hcrprFrontendDir="$HOME/Desenvolvimento/projetos/hcrpr/hcrpr-frontend"
  cd "$hcrprFrontendDir"
  env -i git checkout
  env -i git pull origin master
  npm i
  echo "Deploy do branch master realizado..."
fi
