alias edal='code ~/.dotfiles/zsh/zsh_aliases.zsh'
alias edz='code ~/.zshrc'
alias edbrew='code ~/Brewfile'
alias reload!='. ~/.zshrc'

alias vgl="vagrant global-status"

alias gcd='git checkout develop'
alias gmod='git merge origin/develop'
alias gfb='git checkout -b feature/'
function gpp() {
    git add -A .
    git commit -m $1
    git push
}

function gcob() {
    git checkout -b $1
    git commit
    git push --set-upstream origin $1
}

alias topten='du -hsx * | sort -rh | head -10'
# alias ipy='ipython qtconsole --ConsoleWidget.font_family="Source Control Pro" --ConsoleWidget.font_size=13'
alias ipy='$VIRTUAL_ENV/bin/ipython'

alias edit=code

alias af='alias | grep'

alias pubkey="more ~/.ssh/id_rsa.public | pbcopy | echo '=> Public key copied to pasteboard.'"
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

alias logonhp='ssh shayan@starscream.local'
alias logonjen='ssh ubuntu@ec2-52-14-173-52.us-east-2.compute.amazonaws.com'
alias logonves='ssh vestigovpn@192.168.1.245'

# alias killtunnels='ps ax | grep -i '"'"'ssh -f'"'"' | grep -v grep | awk '"'"'{ print $1 }'"'"' | xargs kill'
#
# alias killtorn='ps ax | grep -i '"'"'python service.py'"'"' | grep -v grep | awk '"'"'{ print $1 }'"'"' | xargs kill'
alias chans='workon anselib;cd ~/span/anselib'
alias chdsp='cd ~/code/science37/nora-dispensation-service'
# alias chpro='workon playerpro;cd ~/span/playerpro/playerpro-api-v2'
# alias chske='workon skeletor;cd ~/span/skeletor'
# alias chtask='workon portal_tasks;cd ~/span/portal_tasks'
# alias chloc='workon locations;cd ~/span/here-location-enrichment'
# alias pgstart='postgres -D /usr/local/var/postgres'

# alias ccr='npm run cc && touch ~/span/api-local-wrapper/api/package.json'
function whoat() {
    cmd="/usr/sbin/lsof -i $1"
    $cmd
}

alias dockstop='docker stop $(docker ps -a -q)'
