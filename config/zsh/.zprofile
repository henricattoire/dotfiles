#!/usr/bin/env zsh
# configuration file for zsh

# source the bash profile if it exists
[[ -f "$ZDOTDIR/profile" ]] && source "$ZDOTDIR/profile"
export PROMPT="%(?.%(!.#.$).!) "
export RPROMPT="%F{red}%(1j.*.)%f %F{white}%~%f" # right prompt
export PS2="> " # change to default PS2 in bash

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
SYNTAX="/usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
[[ -f $SYNTAX ]] && source $SYNTAX
