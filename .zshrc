export ZSH_HOME=$HOME/.zsh

ZPLUGIN="${ZDOTDIR:-$HOME}/.zplugin/bin/zplugin.zsh"

if [[ ! -f "$ZPLUGIN" ]]; then
  if (( $+commands[git] )); then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zplugin/master/doc/install.sh)"
  else
    echo 'git not found' >&2
    exit 1
  fi
fi

. "$ZPLUGIN"

autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin

# bash/zsh shared environment
. $HOME/.environment

# plugins
. $ZSH_HOME/plugins.zsh

# settings
. $ZSH_HOME/settings.zsh

# dir colors
eval $(dircolors $ZSH_HOME/dircolors.zsh)

# completions
. $ZSH_HOME/completions.zsh

# aliases
. $ZSH_HOME/aliases.zsh

# zstyle
. $ZSH_HOME/zstyle.zsh

# keybindings
. $ZSH_HOME/keys.zsh


if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
  exec startx
fi
