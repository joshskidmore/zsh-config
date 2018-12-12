# certbot
alias certbot="certbot --config-dir=$HOME/.letsencrypt/ --work-dir=$HOME/.letsencrypt/ --logs-dir=$HOME/.letsencrypt/"

# scdv
alias dict="sdcv"

# human readable dmesg (with pager)
alias dmesg="dmesg -H"

# exa
alias exa="exa --all --color always"
alias exal="exa --long --group --header --links --git"

# color ip
alias ip="ip -c"

# history-stat
alias history-stat="history 0 | awk '{print \$2}' | sort | uniq -c | sort -n -r | head"

# j/jump
alias j="jump"

# always pass escape characters to less
alias less="less -R"

# ls aliases
alias ls="exa"
alias lls="exal"
alias _ls="ls -lACb --color=always --time-style='+%Y-%m-%d %I:%M:%S %p'"
alias _lls="ls -lhN"

# mpw
alias mpw-create="mpw -t maximum"

# mtr
alias mtr="mtr --show-ips --ipinfo=0 --max-ttl=1000 --tos=0 --order=\"DL RS ABWN GV MI\""
alias mtr-fast="mtr --ipinfo=2 --order="DN" --report-wide --report-cycles=1"

# myip
alias myip="curl -s https://pry.sh | jq -r '.address'"

# network-info
alias ni="network-info.sh"

# nodetop
alias nodetop="watch -n 1 -x node -e 'console.log(os.loadavg(), ((1-os.freemem()/os.totalmem())*100))'"

# prettyping
alias pp="prettyping 1.1.1.1"

# watch the status of pdnsd
alias pdnsd-status="watch -n 1 'sudo pdnsd-ctl status | grep -i available'"

# random chars
alias random-chars="pwgen --capitalize --numerals --symbols --secure -1 75"
alias random-chars-simple="openssl rand -base64 40"

# s3
alias s3="aws s3"

# color todoist
alias todoist="todoist --color"
alias todoist-add="todoist add"
alias todoist-add-stream="todoist add --project-id 2158532453"
alias todoist-list="todoist list"
alias todoist-sync="todoist sync"


# search helpers
alias 'f?'='find ./ | grep -i '
alias 'hi?'='cat ~/.zhistory | grep -i '
alias 'ps?'='pgrep -af '
alias 'yi?'='yay -Q | grep -i '
