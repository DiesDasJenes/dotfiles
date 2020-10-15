#!/usr/bin/env bash

#Cronjob: 0 12 3 * *  cd ~/backupZSH/ && ./backupHistory.sh
set -e -o pipefail

current_date=`date +"%Y_%d_%m"`
name="zsh_history_${current_date}"

cp ~/.zsh_history ~/backupZSH/${name} 

