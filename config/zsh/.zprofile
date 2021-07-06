#!/usr/bin/env zsh
# configuration file for zsh

# prompts
export PROMPT="%(!.#.$) "
export RPROMPT="%F{red}%(?..!)%(1j.*.)%f %F{white}%~%f" # right prompt
export PS2="> " # change to default PS2 in bash
# gnu ls colors (https://geoff.greer.fm/lscolors/)
export LS_COLORS='di=37:ln=34:so=33;40:pi=33;40:ex=32:bd=0:cd=0:su=0:sg=0:tw=0:ow=0'
# homebrew (man)path extensions (use brew info {package} for paths)
if [[ $OSTYPE =~ 'darwin' ]]; then
  PATH=/usr/local/opt/coreutils/libexec/gnubin:$PATH
  PATH=/usr/local/opt/grep/libexec/gnubin:$PATH
  PATH=/usr/local/opt/gnu-sed/libexec/gnubin:$PATH
fi
# add more scripts to path
PATH=$PATH:$HOME/.local/bin
export PATH
typeset -U PATH # remove duplicates
# standard editor
export EDITOR='vim'
# j - jump around
if [[ -f "$HOME/.local/etc/j.bash" ]]; then
  source "$HOME/.local/etc/j.bash"
fi
# never check mail
export MAILCHECK=-1
# aliases
alias grep='grep --color=auto'
  # ls
alias ls='ls --color=auto'
alias la='ls -A'
alias ll='la -l'
  # clear
alias c='clear'
alias cl='clear && ls'
  # mkdir and cd
function mkcd() {
  mkdir -p "$1" && cd $_
}
# force zsh to use emacs keybindings regardless of $EDITOR
bindkey -e
# configurations peculiar to zsh
setopt autocd # automatically cd into typed dir
# reverse search
bindkey '^R' history-incremental-search-backward
# autocompletion
autoload -Uz compinit && compinit
zmodload zsh/complist
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list '' '+m:{[:lower:]}={[:upper:]}' '+m:{[:upper:]}={[:lower:]}' '+m:{_-}={-_}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
  # partial completion suggestions
zstyle ':completion:*' list-suffixes
zstyle ':completion:*' expand prefix suffix
# command history
SAVEHIST=5000
HISTSIZE=1000
export HISTFILE="${XDG_DATA_HOME:-$HOME/.local/share}/zsh/history"
# enable fish like syntax highlighting
SYNTAX="/usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
[[ -f $SYNTAX ]] && source $SYNTAX
