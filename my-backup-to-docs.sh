#!/bin/bash
# Script for make one copy of the backup-to-docs file to
# the current folder

current_dir_path="$(pwd)"
scripts_repo_dir_path="/home/ariel-dutra/Desenvolvimento/shell-scripts/shell-scripts-utils"
backup_to_docs_path="$scripts_repo_dir_path/backup-to-docs"

function update_git_scripts_local_repository() {
  echo "__> Copiando backup-to-docs..."
  echo "__> Buscando ultima versão no Git..."
  cd $scripts_repo_dir_path
  git pull origin master
}

function copy_backup_to_docs_to_current_folder() {
  echo "__> Copiando para pasta atual..."
  cd $current_dir_path
  cp $backup_to_docs_path $current_dir_path
}

function goodbye_message() {
  echo "__> Copia realizada!"
  echo "__> Até!"
}

update_git_scripts_local_repository
copy_backup_to_docs_to_current_folder
goodbye_message
