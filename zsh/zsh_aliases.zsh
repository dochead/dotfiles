alias edal='code ~/code/dotfiles/zsh/zsh_aliases.zsh'
alias edz='code ~/.zshrc'
alias edbrew='code ~/Brewfile'
alias edssh='code ~/.ssh/config'
alias reload!='. ~/.zshrc'

alias gcd='git checkout develop'
alias gmod='git merge origin/develop'
alias gfb='git checkout -b feature/'
function gpp() {
    if [ -z "$1" ]; then
        echo "Usage: gpp \"commit message\""
        return 1
    fi
    git add -A .
    git commit -m "$1" || return 1
    git pull --no-rebase || return 1
    git push origin "$(git branch --show-current)"
}

function gcob() {
    git checkout -b "$1" || return 1
    git commit
    git push --set-upstream origin "$1"
}

alias topten='du -hsx * | sort -rh | head -10'

alias edit=code

alias af='alias | grep'

alias pubkey="cat ~/.ssh/id_rsa.pub | pbcopy . | echo '=> Public key copied to pasteboard.'"
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

function whoat() {
    cmd="/usr/sbin/lsof -i $1"
    $cmd
}

alias serv='python3 -m http.server'

# Shortcuts
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias h="history"
alias j="jobs"

# List all files colorized in long format, including dot files
alias la="ls -lhaF ${colorflag}"

# Enable aliases to be sudo’ed
alias sudo='sudo '

# Get week number
alias week='date +%V'

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"
alias ips="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"

# View HTTP traffic
alias sniff="sudo ngrep -d 'en1' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump="sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""

# OS X has no `md5sum`, so use `md5` as a fallback
command -v md5sum > /dev/null || alias md5sum="md5"

# OS X has no `sha1sum`, so use `shasum` as a fallback
command -v sha1sum > /dev/null || alias sha1sum="shasum"

# Show/hide hidden files in Finder
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# URL-encode strings
alias urlencode='python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1]);"'

alias ytaud="youtube-dl -f bestaudio --extract-audio --audio-format mp3 --audio-quality 0"
alias ytvid="youtube-dl -f \"bestvideo[height>2160]+bestaudio[acodec=opus]/(bestvideo[height=2160][fps>30]+251)/bestvideo[height=2160]+251/bestvideo[height=2160]+140/(bestvideo[height=1440][fps>30]+251)/bestvideo[height=1440]+251/bestvideo[height=1440]+140/(bestvideo[height=1080][fps>30]+251)/bestvideo[height=1080]+251/bestvideo[height=1080]+140/(bestvideo[height=720][fps>30]+251)/bestvideo+251/bestvideo+bestaudio/best\""

alias ga='git add'
alias gb='git branch'
alias gc='git commit --verbose'
alias gcB='git checkout -B'
alias gca='git commit --verbose --all'
alias gcb='git checkout -b'
alias gcf='git config --list'
alias gcl='git clone --recurse-submodules'
alias gclf='git clone --recursive --shallow-submodules --filter=blob:none --also-filter-submodules'
alias gcm='git checkout $(git_main_branch)'
alias gcn='git commit --verbose --no-edit'
alias gco='git checkout'
alias gcor='git checkout --recurse-submodules'
alias gcs='git commit --gpg-sign'
alias gd='git diff'
alias gdca='git diff --cached'
alias gdct='git describe --tags $(git rev-list --tags --max-count=1)'
alias gdcw='git diff --cached --word-diff'
alias gds='git diff --staged'
alias gdt='git diff-tree --no-commit-id --name-only -r'
alias gdup='git diff @{upstream}'
alias gdw='git diff --word-diff'
alias gf='git fetch'
alias gfg='git ls-files | grep'
alias gfo='git fetch origin'
alias gg='git gui citool'
alias gga='git gui citool --amend'
alias ggpull='git pull origin "$(git branch --show-current)"'
alias ggpur=ggu
alias ggpush='git push origin "$(git branch --show-current)"'
alias ghh='git help'
alias gl='git pull'
alias glg='git log --stat'
alias glgg='git log --graph'
alias glgga='git log --graph --decorate --all'
alias glgm='git log --graph --max-count=10'
alias glgp='git log --stat --patch'
alias glo='git log --oneline --decorate'
alias globurl='noglob urlglobber '
alias glod='git log --graph --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset"'
alias glods='git log --graph --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset" --date=short'
alias glog='git log --oneline --decorate --graph'
alias gloga='git log --oneline --decorate --graph --all'
alias glol='git log --graph --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset"'
alias glola='git log --graph --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset" --all'
alias glols='git log --graph --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset" --stat'
alias glp=_git_log_prettily
alias gp='git push'
alias grh='git reset'
alias grhh='git reset --hard'
alias grhk='git reset --keep'
alias grhs='git reset --soft'
alias grm='git rm'
alias grmc='git rm --cached'
alias grmv='git remote rename'
alias gsb='git status --short --branch'
alias gsd='git svn dcommit'
alias gsh='git show'
alias gsi='git submodule init'
alias gst='git status'
alias gsta='git stash push'
alias gstaa='git stash apply'
alias gstall='git stash --all'
alias gstc='git stash clear'
alias gstd='git stash drop'
alias gstl='git stash list'
alias gstp='git stash pop'
alias gsts='git stash show --patch'

# Apple Aliases
alias tunnel-qa='cqlconnect tunnel itms11shared21 itms11shared21_s01'
alias login-qa='cqlconnect cqlsh --username itms11shared21_cassandra_user_admin --password C3C06E2C-E057-47B5-B618-7457F2758ACA'

alias docker=podman
