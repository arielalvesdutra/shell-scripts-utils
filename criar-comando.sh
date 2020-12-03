#!/bin/bash

diretorio_base=$HOME/.local/bin
comando_nome=
comando_caminho=


function criar_arquivo_do_comando() {
    read -p "> Digite o nome do comando para ser criado: " comando_nome
    echo "> Nome $comando_nome selecionado para o comando"
    mkdir -p $diretorio_base
    comando_caminho=$diretorio_base/$comando_nome
    touch $comando_caminho
    chmod +x $comando_caminho
}

function adicionar_tipo_do_comando() {
    read -p "> Digite o tipo do comando. 'p' para Python ou qualquer outro valor para Shell Script: " comando_tipo
    
    case $comando_tipo in
        p) 
            echo "> Você selecionou comando do tipo python"
            echo "#!/bin/python3" > $comando_caminho
            echo "" >> $comando_caminho
        ;;
        *) 
            echo "> Você selecionou comando do tipo shell script"
            echo "#!/bin/bash" > $comando_caminho
            echo "" >> $comando_caminho
        ;;
    esac
}

function editar_comando() {
    nano $comando_caminho
    
}

function mensagem_final() {
    echo "> Comando criado com sucesso!"
}


criar_arquivo_do_comando
adicionar_tipo_do_comando
editar_comando
mensagem_final
