alias logonhp='ssh -A shayan@192.168.0.10'
alias killtunnels='ps ax | grep -i '"'"'ssh -f'"'"' | grep -v grep | awk '"'"'{ print $1 }'"'"' | xargs kill'
