alias redb='chske;psql -c "SELECT pg_terminate_backend(pg_stat_activity.pid) FROM pg_stat_activity WHERE pg_stat_activity.datname = '"'"'skeletor'"'"' AND pid <> pg_backend_pid();";psql -c "DROP DATABASE skeletor;"; psql -c "CREATE DATABASE skeletor WITH OWNER shayan ENCODING '"'"'UTF8'"'"';"; ./manage.py migrate --run-syncdb'

alias act_py='source ~/media24/virts/py/bin/activate'

alias edal='atom ~/.dotfiles/zsh/zsh_aliases.zsh'
alias edz='atom ~/.zshrc'
alias reload!='. ~/.zshrc'

alias gcd='git checkout develop'
alias gmod='git merge origin/develop'
alias gfb='git checkout -b feature/'
function gpp() {
    git add -A .
    git commit -m $1
    git push
}

alias topten='du -hsx * | sort -rh | head -10'
# alias ipy='ipython qtconsole --ConsoleWidget.font_family="Source Control Pro" --ConsoleWidget.font_size=13'
alias ipy='$VIRTUAL_ENV/bin/ipython'

alias edit=atom

alias rut='export PLAYER_PRO_V3_SETTINGS=/Users/shayan/span/playerpro/playerpro-api-v2/etc/settings.shayan.cfg;python -m unittest discover'
alias af='alias | grep'

alias pubkey="more ~/.ssh/id_rsa.public | pbcopy | echo '=> Public key copied to pasteboard.'"
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

alias dup='boot2docker up'
alias logonhp='ssh shayan@starscream.local'

# alias killtunnels='ps ax | grep -i '"'"'ssh -f'"'"' | grep -v grep | awk '"'"'{ print $1 }'"'"' | xargs kill'
#
# alias killtorn='ps ax | grep -i '"'"'python service.py'"'"' | grep -v grep | awk '"'"'{ print $1 }'"'"' | xargs kill'
alias chans='workon anselib;cd ~/span/anselib'
# alias chpro='workon playerpro;cd ~/span/playerpro/playerpro-api-v2'
# alias chske='workon skeletor;cd ~/span/skeletor'
# alias chtask='workon portal_tasks;cd ~/span/portal_tasks'
# alias chloc='workon locations;cd ~/span/here-location-enrichment'
# alias pgstart='postgres -D /usr/local/var/postgres'

# alias ccr='npm run cc && touch ~/span/api-local-wrapper/api/package.json'
