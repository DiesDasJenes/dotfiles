# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/alaska/.oh-my-zsh
#Set name of the to load.
ZSH_THEME="powerlevel9k/powerlevel9k"
#Enable command auto-correction
ENABLE_CORRECTION="true"

plugins=(
  git
  ssh-agent
  z
)

zstyle :omz:plugins:ssh-agent identities id_rsa

source $ZSH/oh-my-zsh.sh

# User Configuration

POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true

export GPG_TTY=$(tty)

# Fuzzy search with maximum 10 items in the searchbar
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_TMUX_HEIGHT=13
