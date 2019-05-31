# Path to your oh-my-zsh installation.
export ZSH=/Users/alaska/.oh-my-zsh


# Coloured man pages using less as pager
man() {
    env \
          LESS_TERMCAP_mb=$(printf "\e[1;31m") \
          LESS_TERMCAP_md=$(printf "\e[1;31m") \
          LESS_TERMCAP_me=$(printf "\e[0m") \
          LESS_TERMCAP_se=$(printf "\e[0m") \
          LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
          LESS_TERMCAP_ue=$(printf "\e[0m") \
          LESS_TERMCAP_us=$(printf "\e[1;36m") \
          man "$@"
}

# Set name of the theme to load.
ZSH_THEME="powerlevel10k/powerlevel10k"

#Configuration for powerlevel9k

  #Sets the input prompt on the next line
  POWERLEVEL9K_PROMPT_ON_NEWLINE=true
  #Shortens the name of directory names
  POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
  POWERLEVEL9K_SHORTEN_DELIMITER=""
  POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"
  #Left Side Context configuration
  POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
  #Right Side Context configuration
  POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs context time)
# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

plugins=(
  git
  ssh-agent
  z
)

#second_rsa for example purpose
zstyle :omz:plugins:ssh-agent identities id_rsa, second_rsa

source $ZSH/oh-my-zsh.sh

#Not needed with only one key
#eval "$(ssh-agent -s)"
#ssh-add -L | grep second > /dev/null || ssh-add -k ~/.ssh/second_rsa
#ssh-add -L | grep id_rsa > /dev/null || ssh-add -k ~/.ssh/id_rsa
#export GIT_SSH_COMMAND='ssh -i ~/.ssh/otto_rsa'

#For fzf: https://github.com/junegunn/fzf
# Fuzzy search with maximum 10 items in the searchbar
#[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
#export FZF_TMUX_HEIGHT=13

#If jenv and rbenv are installed
#eval "$(jenv init -)"
#eval "$(rbenv init -)"
