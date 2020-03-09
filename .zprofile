# Prompt
PROMPT='%~ > '

## Plugins
##
source /Users/omarabid/Documents/Config/zsh/dotenv.plugin.zsh

# Aliases
alias l='exa -la' # exa
alias ll='exa -la --tree --ignore-glob=.git'
alias cat='bat' # bat
alias h='hexyl' # hexyl
alias n='nvim' #nvim

# History size
HISTFILE=$HOME/.zsh_history
HISTSIZE=50000
SAVEHIST=10000
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space
setopt inc_append_history
setopt share_history

# Changing directories
setopt auto_cd
setopt auto_pushd
unsetopt pushd_ignore_dups
setopt pushdminus

# Run exa after cd
autoload -U add-zsh-hook
add-zsh-hook -Uz chpwd (){ l; source_env; }

# Completion
setopt auto_menu
setopt always_to_end
setopt complete_in_word
unsetopt flow_control
unsetopt menu_complete
zstyle ':completion:*:*:*:*:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z-_}={A-Za-z_-}' 'r:|=*' 'l:|=* r:|=*'
zstyle ':completion::complete:*' use-cache 1
zstyle ':completion::complete:*' cache-path $ZSH_CACHE_DIR
zstyle ':completion:*' list-colors ''
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#) ([0-9a-z-]#)*=01;34=0=01'

## Binaries Path
##
# Cargo installed Binaries
export PATH="$HOME/.cargo/bin:$PATH"
# Python 3.7
export PATH="$PATH:/Users/omarabid/Library/Python/3.7/bin"
# Manually installed Binaries
export PATH="$PATH:/Users/omarabid/Documents/apps"
export PATH="$PATH:/Users/omarabid/.local/bin"
# MacPorts Binaries
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
