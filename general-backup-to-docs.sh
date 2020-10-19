#!/bin/bash

function get_source_and_target_dir() {
  read -p '> Please type the source dir: ' source_dir
  read -p '> Please type the target dir: ' target_dir

  echo "> Selected source dir: $source_dir"
  echo "> Selected target dir: $target_dir"
}

function backup_files() {

  echo ">>> Starting the backup from $source_dir to $target_dir."
  printf "\n \n"

  cd $source_dir

  if [ ! -d $target_dir ]; then
    echo ">> Creating $destinyDir directory..."
    printf "\n"
    mkdir -p $target_dir
  fi
  
  echo ">>> Executing the backup..."
  rsync -avz --delete --exclude 'target' --exclude '.idea' --exclude 'node_modules' --exclude '.git' --exclude 'backup-to-docs' ./  $target_dir

  printf "\n"
  echo ">>> Backup was executed..."
  echo ">>> Bye! :)"
}

get_source_and_target_dir
backup_files
