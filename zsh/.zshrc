# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/richard/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git
	sublime
	fzf
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
export EDITOR='vim'


# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# =====================================================================
# PATHS
# =====================================================================

export PATH=~/bin:/opt/homebrew/bin:$PATH

# =====================================================================
# Enhanced history
# =====================================================================
# https://martinheinz.dev/blog/110

HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000000
SAVEHIST=10000000

HISTORY_IGNORE="(ls|cd|pwd|exit|cd)*"


setopt EXTENDED_HISTORY      # Write the history file in the ':start:elapsed;command' format.
setopt INC_APPEND_HISTORY    # Write to the history file immediately, not when the shell exits.
setopt SHARE_HISTORY         # Share history between all sessions.
setopt HIST_IGNORE_DUPS      # Do not record an event that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS  # Delete an old recorded event if a new event is a duplicate.
setopt HIST_IGNORE_SPACE     # Do not record an event starting with a space.
setopt HIST_SAVE_NO_DUPS     # Do not write a duplicate event to the history file.
setopt HIST_VERIFY           # Do not execute immediately upon history expansion.
setopt APPEND_HISTORY        # append to history file (Default)
setopt HIST_NO_STORE         # Don't store history commands
setopt HIST_REDUCE_BLANKS    # Remove superfluous blanks from each command line being added to the history.

export HIST_STAMPS="yyyy-mm-dd"

# =====================================================================
# ALIASES
# =====================================================================

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


# IP Address aliases
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en1"
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"


# Recursively delete `.DS_Store` files
alias clean-ds-store="find . -type f -name '*.DS_Store' -ls -delete"

# Mac finder
alias finder-show="defaults write com.apple.Finder AppleShowAllFiles -bool YES; killall -HUP Finder"
alias finder-hide="defaults write com.apple.Finder AppleShowAllFiles -bool NO; killall -HUP Finder"

# Tailscale
alias tailscale="/Applications/Tailscale.app/Contents/MacOS/Tailscale"

# Mac firewall
# alias macfw="/usr/libexec/ApplicationFirewall/socketfilterfw"



# =====================================================================
# ALIASES - DEV - General
# =====================================================================

# Setup dev environments
alias dev-node="source ~/.richard_dotfiles/dev/dev-node"
alias dev-go="source ~/.richard_dotfiles/dev/dev-go"
## alias dev-ruby="source ~/.richard_dotfiles/dev/dev-ruby"
## alias dev-java="source ~/.richard_dotfiles/dev/dev-java"
## alias dev-python="source ~/.richard_dotfiles/dev/dev-python"
alias dev-rust="source ~/.richard_dotfiles/dev/dev-rust"

alias dev-mise="source ~/.richard_dotfiles/dev/dev-mise"

# Clean merged branches (adapted from https://stackoverflow.com/a/6127884/14870317)
alias git-prune-local="git branch --merged | grep -iv main | xargs git branch -d "

# =====================================================================
# ALIASES - Obsidian
# =====================================================================

alias ob-push="~/.richard_dotfiles/obsidian/ob-git.sh push"
alias ob-pull="~/.richard_dotfiles/obsidian/ob-git.sh pull"
alias ob="~/.richard_dotfiles/obsidian/ob-open.sh"


# =====================================================================
# ALIASES - DEV - Neith, FSAT
# =====================================================================

# Switching to mise for Python
# dev-python
# dev-rust


# =====================================================================
# ALIASES - DEV - TSE, Neith
# =====================================================================


# tse utility - dev mode to handle multiple repo locations (instead of installing in /usr/local/bin)
## export PATH="./infrastructure/tse-cli:${PATH}"

# dev-node

# =====================================================================
# ALIASES - DEV - Lumenii Rails
# =====================================================================


# 5-Apr-2024
# This is enabled before rbenv as a work-around for Puma crashinng on startup
# with the solid_queue plugin - in the Lumenii/SPT app
# https://github.com/rails/rails/issues/38560.
# On moving this around into the dev-ruby script, the issue still persists.
# So we're leaving it here.

# Not using PUMA anymore
# export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

# Switching to mise
# dev-ruby


# =====================================================================
# ALIASES - DEV - Mac Mini setup
# =====================================================================

alias lum="cd ~/Projects/Lumenii/succession-planning-tool && source .env.dev.sh"
alias np="cd ~/Projects/Neith/neith-platform && source .env.dev.sh"
alias fev="cd ~/Projects/FevInsure/solar-analysis-tool && source .env.dev.sh"
alias sun="cd ~/Projects/Sun-Exchange/proxima && source .env.dev.sh"

# =====================================================================
# Mise
# =====================================================================

# Mise install notes
# - ruby 3.3.5
#   - brew install libyaml

# echo 'export PATH="$HOME/.local/share/mise/shims:$PATH"' >> ~/.zprofile
export PATH="$HOME/.local/share/mise/shims:$PATH"
