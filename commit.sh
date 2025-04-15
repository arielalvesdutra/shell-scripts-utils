#!/bin/bash

mensagem_commit=$1


if [ "$mensagem_commit" = "" ]; then

 echo "Mensagem do commit é obrigatoria"
 exit 0

fi

echo "Mensagem do commit: $mensagem_commit"
git add --all
echo "Adicionando tudo..."
git commit -m "$mensagem_commit"
echo "Commit realizado"

