# remove key timeout
KEYTIMEOUT=1

# enable vim mode
bindkey -v

# emacs bindings emacs
bindkey '^p' history-substring-search-up
bindkey '^n' history-substring-search-down
bindkey '^w' backward-kill-word
bindkey '^f' autosuggest-accept
bindkey '^u' backward-kill-line
bindkey '^a' beginning-of-line
bindkey '^e' end-of-line

# edit command line keybinds
autoload -U edit-command-line
zle -N edit-command-line
bindkey '^x^e' edit-command-line
bindkey '^xe' edit-command-line

# fix esc-/ chord (perform search)
vi-search-fix() {
  zle vi-cmd-mode
  zle .vi-history-search-backward
}

autoload vi-search-fix
zle -N vi-search-fix
bindkey -M viins '\e/' vi-search-fix

# fix backspace
bindkey "^?" backward-delete-char

# disable `r` zsh builtin
disable r

# allow copy/paste with system keyboard
# behave as expected with vim commands ( y/p/d/c/s )
[[ -n $DISPLAY ]] && (( $+commands[xclip] )) && {
  function cutbuffer() {
    zle .$WIDGET
    echo $CUTBUFFER | xclip -selection clipboard
  }

  zle_cut_widgets=(
    vi-backward-delete-char vi-change
    vi-change-eol
    vi-change-whole-line
    vi-delete
    vi-delete-char
    vi-kill-eol
    vi-substitute
    vi-yank
    vi-yank-eol
  )

  for widget in $zle_cut_widgets; do
    zle -N $widget cutbuffer
  done

  function putbuffer() {
    zle copy-region-as-kill "$(xclip -o)"
    zle .$WIDGET
  }


  zle_put_widgets=( vi-put-after vi-put-before )

  for widget in $zle_put_widgets; do
    zle -N $widget putbuffer
  done
}

# misc
autoload -Uz copy-earlier-word
zle -N copy-earlier-word
bindkey '^k' insert-last-word
bindkey '^j' copy-earlier-word