# ============================================
# Zsh Additions for Modern Setup
# ============================================
# Add these to your ~/.zshrc
# ============================================

# ------------------------------------------
# Starship Prompt (add at END of .zshrc)
# ------------------------------------------
eval "$(starship init zsh)"

# ------------------------------------------
# Modern CLI Tool Aliases
# ------------------------------------------
# These override/supplement your existing aliases

# eza (modern ls)
alias ls='eza --color=always --icons=always'
alias l='eza -lF --color=always --icons=always'
alias la='eza -laF --color=always --icons=always'
alias ll='eza -l --color=always --git --icons=always'
alias lt='eza --tree --level=2 --color=always --icons=always'
alias lsd='eza -lD --color=always --icons=always'

# bat (modern cat)
alias cat='bat --paging=never'
alias catt='bat'

# Use bat for man pages
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# ripgrep (modern grep) - your alias 'af' will use this
alias grep='rg'

# fd (modern find)
alias find='fd'

# Disk space tools
alias du='dust'
alias df='duf'

# ------------------------------------------
# Zoxide (smarter cd)
# ------------------------------------------
eval "$(zoxide init zsh)"
# Now use 'z' to jump: z project-name

# ------------------------------------------
# FZF Configuration
# ------------------------------------------
# Use fd for fzf
export FZF_DEFAULT_COMMAND='fd --hidden --strip-cwd-prefix --exclude .git'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND='fd --type=d --hidden --strip-cwd-prefix --exclude .git'

# Previews with bat and eza
export FZF_CTRL_T_OPTS="--preview 'bat -n --color=always --line-range :500 {}'"
export FZF_ALT_C_OPTS="--preview 'eza --tree --color=always {} | head -200'"

# Load fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# ------------------------------------------
# fnm (Fast Node Manager)
# ------------------------------------------
eval "$(fnm env --use-on-cd)"

# ------------------------------------------
# Updated Aliases (replacements)
# ------------------------------------------
# gh replaces hub
alias gpr='gh pr create'
alias gprl='gh pr list'
alias gprv='gh pr view --web'

# yt-dlp replaces youtube-dl
alias ytaud='yt-dlp -f bestaudio --extract-audio --audio-format mp3 --audio-quality 0'
alias ytvid='yt-dlp -f "bestvideo[height<=2160]+bestaudio/best"'

# Podman (use docker commands with podman)
alias docker='podman'
alias dockstop='podman stop $(podman ps -a -q)'

# ------------------------------------------
# Git functions
# ------------------------------------------

git_current_branch () {
	local ref
	ref=$(git symbolic-ref --quiet HEAD 2> /dev/null) 
	local ret=$? 
	if [[ $ret != 0 ]]
	then
		[[ $ret == 128 ]] && return
		ref=$(git rev-parse --short HEAD 2> /dev/null)  || return
	fi
	echo ${ref#refs/heads/}
}

# ------------------------------------------
# AI Tools
# ------------------------------------------
alias cc='claude'
alias ccr='claude --resume'
alias ccc='claude --continue'
export PATH="$HOME/.local/bin:$PATH"

# ------------------------------------------
# Unified History Across All Tabs
# ------------------------------------------
HISTFILE=~/.zsh_history
HISTSIZE=50000
SAVEHIST=50000

setopt SHARE_HISTORY          # Share history between all sessions
setopt INC_APPEND_HISTORY     # Write to history file immediately, not when shell exits
setopt HIST_EXPIRE_DUPS_FIRST # Expire duplicate entries first when trimming
setopt HIST_IGNORE_DUPS       # Don't record duplicate of previous command
setopt HIST_IGNORE_ALL_DUPS   # Delete old duplicate when new one is added
setopt HIST_FIND_NO_DUPS      # Don't show duplicates when searching
setopt HIST_IGNORE_SPACE      # Don't record commands starting with space
setopt HIST_SAVE_NO_DUPS      # Don't write duplicates to history file
setopt HIST_VERIFY            # Show command before executing from history

source ~/code/dotfiles/zsh/zsh_aliases.zsh
export PATH="/opt/homebrew/opt/python@3.14/bin:$PATH"
