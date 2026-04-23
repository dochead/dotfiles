# ============================================
# Brewfile - Modern Mac Dev Setup 2026
# ============================================
# Install: brew bundle install
# Check:   brew bundle check
# Clean:   brew bundle cleanup --force
# ============================================

# Specify directory for cask installs
cask_args appdir: '/Applications'

# tap 'apple/applejdk', 'git@github.pie.apple.com/applejdk/homebrew-applejdk'

# ============================================
# AI
# ============================================
cask 'chatgpt'               # ChatGPT Desktop
cask 'claude'                # Claude AI Desktop
cask 'jan'                   # Jan AI Desktop
cask 'lm-studio'             # Running models

# ============================================
# Terminal & Shell
# ============================================
brew 'starship'                # Cross-shell prompt
brew 'tmux'                    # Terminal multiplexer
# brew 'zellij'                  # Modern Tmux replacement

# ============================================
# Modern CLI Replacements
# ============================================
brew 'eza'                     # Modern ls (icons, git, tree)
brew 'bat'                     # Modern cat (syntax highlighting)
brew 'fd'                      # Modern find (faster, simpler)
brew 'ripgrep'                 # Modern grep (blazing fast)
brew 'fzf'                     # Fuzzy finder
brew 'zoxide'                  # Smarter cd (learns your habits)
brew 'git-delta'               # Beautiful git diffs
brew 'difftastic'              # Structural/semantic diffs

# ============================================
# Disk & System Analysis
# ============================================
brew 'dust'                    # Visual disk usage (modern du)
brew 'duf'                     # Modern df replacement
brew 'gdu'                     # Fast interactive disk analyzer
brew 'htop'                    # Interactive process viewer
brew 'glances'                 # System monitoring dashboard
brew 'ncdu'                    # NCurses disk usage
brew 'btop'

# ============================================
# Containers
# ============================================
brew 'podman'                  # Docker alternative (daemonless)
brew 'podman-compose'          # Docker Compose for Podman
brew 'docker-compose'          # Compose (works with Podman too)
brew 'lazydocker'              # Docker/Podman TUI

# ============================================
# Git & Version Control
# ============================================
brew 'git'
brew 'git-extras'              # Useful git utilities
brew 'git-secrets'             # Prevent committing secrets
brew 'gh'                      # GitHub CLI (replaces hub)
brew 'lazygit'                 # Git TUI
brew 'tig'                     # Git text-mode interface

# ============================================
# Languages & Version Managers
# ============================================
brew 'fnm'                     # Fast Node Manager (replaces nvm/nodenv)
brew 'python'
brew 'pyenv-virtualenv'        # Python version management
brew 'ruby'
brew 'k9s'
#brew 'node@24'

# ============================================
# Package Managers & Tools
# ============================================
brew 'pipx'                    # Python CLI tool installer
brew 'pnpm'                    # Fast npm alternative
brew 'uv'                      # Fast Python package installer
brew 'mas'                     # Mac App Store CLI

# ============================================
# Cloud & DevOps
# ============================================
brew 'awscli'

# ============================================
# Databases
# ============================================
brew 'mysql', restart_service: true
brew 'postgresql@18', restart_service: true
#brew 'redis'
brew 'opensearch'
brew 'opensearch-dashboards'

# ============================================
# Media & Image Processing
# ============================================
brew 'ffmpeg'
brew 'imagemagick'
brew 'gifify'                  # Video to GIF
brew 'gifsicle'                # GIF manipulation
brew 'yt-dlp'                  # YouTube downloader (replaces youtube-dl)
brew 'mpv'                     # Media player

# ============================================
# Networking & Security
# ============================================
cask '1password'                # Password manager
cask '1password-cli'
brew 'aria2'                   # Download manager
brew 'curl'
brew 'wget'
brew 'nmap'                    # Network scanner
brew 'mtr'                     # Network diagnostics
brew 'gnupg'                   # GPG encryption
brew 'openssl'
brew 'telnet'
brew 'websocat'                # WebSocket CLI
brew 'speedtest-cli'           # Speed test

# ============================================
# Development Utilities
# ============================================
brew 'cmake'
brew 'coreutils'               # GNU core utilities
brew 'gettext'
brew 'graphviz'                # Graph visualization
brew 'jq'                      # JSON processor
brew 'jsonlint'                # JSON validator
brew 'libmagic'                # File type detection
brew 'readline'
brew 'pv'                      # Pipe viewer (progress)
brew 'pwgen'                   # Password generator
brew 'unar'                    # Universal archive extractor

# ============================================
# Libraries (dependencies, but good to have explicit)
# ============================================
brew 'libxml2'
brew 'libxmlsec1'
brew 'libssh2'
brew 'libyaml'
brew 'libksba'
brew 'xz'
brew 'libpq'

# ============================================
# Misc CLI Tools
# ============================================
brew 'midnight-commander'      # File manager
brew 'links'                   # Text web browser
brew 'scrcpy'                  # Android screen mirror

# ============================================
# Fonts
# ============================================
cask 'font-hack-nerd-font'
cask 'font-fira-code-nerd-font'
cask 'font-jetbrains-mono-nerd-font'

# ============================================
# Terminal & Dev Apps
# ============================================
cask 'warp'                    # AI-native terminal (replaces iTerm2)
cask 'ghostty'                 # iTerm Replacement
cask 'visual-studio-code'
cask 'jetbrains-toolbox'       # JetBrains IDE manager (for Junie)
cask 'podman-desktop'          # Podman GUI (replaces Docker Desktop)
cask 'github'                  # GitHub Desktop
cask 'postman'                 # API testing
cask 'rapidapi'                # API testing & development
cask 'p4v'                     # P4Merge - diff/merge tool

# ============================================
# Productivity & Utilities
# ============================================
cask 'raycast'                 # Modern launcher (replaces Spotlight/Alfred)
cask 'browserosaurus'          # Browser picker
cask 'fantastical'             # Calendar
cask 'ubersicht'               # Desktop widgets
cask 'tomighty'                # Pomodoro timer
cask 'quitter'                 # Auto-quit inactive apps
cask 'popclip'                 # iOS style selection tools
cask 'fastrepl/fastrepl/char@nightly'  # Note-taking app
cask 'jordanbaird-ice@beta'

# ============================================
# Media & Documents
# ============================================
cask 'vlc'                     # Media player
cask 'calibre'                 # E-book management
cask 'phoenix-slides'          # Image viewer

# ============================================
# Cloud Storage & Sync
# ============================================
cask 'dropbox'
cask 'google-chrome'
cask 'telegram'
cask 'arc'
cask 'zoom'                   # Video conferencing
cask 'nomachine'              # Remote desktop
cask 'whatsapp'
cask 'slack'

# ============================================
# Gaming & Fun
# ============================================
cask 'steam'
cask 'epic-games'
cask 'moonlight'              # Game streaming client

# ============================================
# Hardware & System
# ============================================
cask 'raspberry-pi-imager'
cask 'disk-inventory-x'        # Disk space visualizer (GUI)

# ============================================
# Mac App Store Apps
# ============================================
mas 'Amphetamine', id: 937984704       # Keep Mac awake
# mas 'Dropzone 4', id: 1485052491       # Quick actions (updated from 3)
mas 'Magnet', id: 441258766            # Window management
# mas 'PopClip', id: 445189367           # Selection actions
mas 'ScreenFloat', id: 414528154       # Screenshot manager
mas 'Yoink', id: 457622435             # Drag & drop shelf

# ============================================
# Apple Brew Installs
# ============================================
# brew 'applejdk-11'
brew 'jenv'
brew 'gradle'
brew 'maven'
brew 'apple/sre-tools/sprox'
brew 'apple/isd-dev/acc'

# ============================================
# Removed / Replaced:
# ============================================
# ack, the_silver_searcher → ripgrep
# hub → gh
# youtube-dl → yt-dlp
# tree → eza --tree
# nvm, nodenv → fnm
# docker (cask) → podman + podman-desktop
# iterm2 → warp
# alfred → raycast
# zsh, zsh-autosuggestions, zsh-completions,
#   zsh-syntax-highlighting, zplug → fish + starship
# v8-315 → removed (outdated)
# pyqt → removed (unused?)
# dart tap → removed

