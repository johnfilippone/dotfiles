#bash profile from my time at IBP minus work specific stuff

#system aliases
alias up="cd .."
alias p="pwd"
alias l="ls -G"
alias ls="ls -G"
alias la="ls -laG"
alias ctags="`brew --prefix`/bin/ctags"

#git aliases
alias st="git status"
alias br="git branch"

# colors and prompt
# dependency on https://github.com/chriskempson/base16-shell.git
~/.config/base16-shell/scripts/base16-3024.sh
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
function prompt {
  local BLACK="\[\033[0;30m\]"
  local BLACKBOLD="\[\033[1;30m\]"
  local RED="\[\033[0;31m\]"
  local REDBOLD="\[\033[1;31m\]"
  local GREEN="\[\033[0;32m\]"
  local GREENBOLD="\[\033[1;32m\]"
  local YELLOW="\[\033[0;33m\]"
  local YELLOWBOLD="\[\033[1;33m\]"
  local BLUE="\[\033[0;34m\]"
  local BLUEBOLD="\[\033[1;34m\]"
  local PURPLE="\[\033[0;35m\]"
  local PURPLEBOLD="\[\033[1;35m\]"
  local CYAN="\[\033[0;36m\]"
  local CYANBOLD="\[\033[1;36m\]"
  local WHITE="\[\033[0;37m\]"
  local WHITEBOLD="\[\033[1;37m\]"
  local RESETCOLOR="\[\e[00m\]"

  export PS1="\n$RED\u $PURPLE@ $GREEN\w $RESETCOLOR"
  export PS2=" | → $RESETCOLOR"
}
prompt
