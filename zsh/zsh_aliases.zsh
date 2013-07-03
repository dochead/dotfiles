alias logonhp='ssh -A shayan@192.168.0.10'
alias logonlad='ssh -A www.laduma.co'
alias logonphp='ssh -A 162.209.53.137'

alias killtunnels='ps ax | grep -i '"'"'ssh -f'"'"' | grep -v grep | awk '"'"'{ print $1 }'"'"' | xargs kill'
alias tunphp='ssh -f 162.209.53.137 -L 3307:localhost:3306 -N'

alias edal='edit ~/.dotfiles/zsh/zsh_aliases.zsh'
alias ofh='open .'   # Open finder here

alias gcd='git checkout development'