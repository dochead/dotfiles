alias logonhp='ssh -A starscream.local'
alias logonlad='ssh -A www.laduma.co'
alias logonphp='ssh -A 162.209.53.137'
alias logonftp='ssh -A 166.78.237.92'
alias logonama='ssh -A ubuntu@dieburger.redactor.local'

alias killtunnels='ps ax | grep -i '"'"'ssh -f'"'"' | grep -v grep | awk '"'"'{ print $1 }'"'"' | xargs kill'
alias tunphp='ssh -f 162.209.53.137 -L 3307:localhost:3306 -N'

alias killtorn='ps ax | grep -i '"'"'python service.py'"'"' | grep -v grep | awk '"'"'{ print $1 }'"'"' | xargs kill'
alias act24='source ~/media24/vp/bin/activate'
alias act_pay='source ~/media24/virts/dj_paywall/bin/activate'
alias chpay='act_pay;cd ~/media24/dj_paywall'
alias act_fab='source ~/media24/virts/fablib/bin/activate'
alias chfab='act_fab;cd ~/media24/newspapers_datatools'

alias act_ans='source ~/media24/virts/anselib/bin/activate'
alias chans='act_ans;cd ~/media24/anselib'

alias edal='edit ~/.dotfiles/zsh/zsh_aliases.zsh'
alias ofh='open .'   # Open finder here

alias gcd='git checkout development'

alias dumppay='mysqldump -u root -ppaywall_root -h paywall-dev.cmqip79jiego.eu-west-1.rds.amazonaws.com --add-drop-table --no-create-db paywalldb > dump-paywall.`date +%Y%m%d`.sql'
alias dumppay_stage='mysqldump -u root -proot -h paywall-stage.cmqip79jiego.eu-west-1.rds.amazonaws.com --add-drop-table --no-create-db paywalldb > dump-stage-paywall.`date +%Y%m%d`.sql'
alias dumppay_live='mysqldump -u root --password=I8DaYPdXNa -h paywall-db.cmqip79jiego.eu-west-1.rds.amazonaws.com  --databases paywalldb --add-drop-table --no-create-db > dump-live-paywall.`date +%Y%m%d`.sql'

alias topten='du -hsx * | sort -rh | head -10'