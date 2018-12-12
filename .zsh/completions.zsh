# aws
# zplugin ice lucid wait'2' from'gh' pick'bin/aws_zsh_completer.sh' atinit'zpcompinit' atload'zpcdreplay -q'
# zplugin light aws/aws-cli
zplugin ice lucid wait'2' atinit'zpcompinit' atload'zpcdreplay -q'
zplugin snippet https://raw.githubusercontent.com/aws/aws-cli/develop/bin/aws_zsh_completer.sh


# aliases/completions
zpcompdef _ssh ssh-tmux=ssh
zpcompdef _ssh sshp=ssh
zpcompdef _ssh rsync-fast.sh=ssh
zpcompdef _ssh prettyping=ssh
zpcompdef _rsync remotecat.sh=rsync
zpcompdef _rsync sshfs=rsync


#source <(awless completion zsh)

# pip/pip2/pip3
#. <(pip3 completion --zsh)
# compctl -K _pip_completion pip3
# compctl -K _pip_completion pip
# compctl -K _pip_completion pip2
