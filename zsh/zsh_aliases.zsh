alias logonhp='ssh -A starscream.local'
alias logonlad='ssh -A www.laduma.co'
alias logonphp='ssh -A 162.209.53.137'
alias logonftp='ssh -A 166.78.237.92'
alias logonama='ssh -A ubuntu@dieburger.redactor.local'

alias killtunnels='ps ax | grep -i '"'"'ssh -f'"'"' | grep -v grep | awk '"'"'{ print $1 }'"'"' | xargs kill'
alias tunphp='ssh -f 162.209.53.137 -L 3307:localhost:3306 -N'

alias killtorn='ps ax | grep -i '"'"'python service.py'"'"' | grep -v grep | awk '"'"'{ print $1 }'"'"' | xargs kill'
alias act24='source ~/python_code/vp/bin/activate'

alias edal='edit ~/.dotfiles/zsh/zsh_aliases.zsh'
alias ofh='open .'   # Open finder here

alias gcd='git checkout development'

alias dumppay='mysqldump -u root -ppaywall_root -h paywall-dev.cmqip79jiego.eu-west-1.rds.amazonaws.com --add-drop-table --no-create-db paywalldb > dump-paywall.`date +%Y%m%d`.sql'