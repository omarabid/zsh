# Prompt
PROMPT='%~ > '

## Plugins
##
source /home/omarabid/Documents/Config/zsh/dotenv.plugin.zsh
source /home/omarabid/Documents/Config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh


# ENV Variables
export TUIR_EDITOR=vim

# Aliases
alias l='exa -la' # exa
alias ll='exa -la --tree --ignore-glob=.git'
alias cat='bat' # bat
alias h='hexyl' # hexyl
alias n='nvim .' # nvim
alias r='tuir' # reddit
alias irc='weechat' # irc client
alias e='neomutt' # email client
alias c='cointop' # Crypto Quotes
alias wifi='osx-wifi-cli' # sudo npm install -g osx-wifi-cli
alias speed='speed-test' # npm install --global speed-test
alias cpu='glances' # pip3 install glances
alias gat='grv' # brew install grv

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

# Start i3

# 1 - Main World
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]];
then
    cat /home/omarabid/.config/i3/config /home/omarabid/.config/i3/spaces/main > /home/omarabid/.config/i3/tmp/mainconf;
    startx /usr/bin/i3 -c /home/omarabid/.config/i3/tmp/mainconf --;
#exec numlockx &;
fi

# 2 - crates.live
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty2 ]];
then
    cat /home/omarabid/.config/i3/config /home/omarabid/.config/i3/spaces/crateslive > /home/omarabid/.config/i3/tmp/clconf;
    startx /usr/bin/i3 -c /home/omarabid/.config/i3/tmp/clconf --;
fi

# 3 - Rust projects
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty3 ]];
then
    cat /home/omarabid/.config/i3/config /home/omarabid/.config/i3/spaces/rust > /home/omarabid/.config/i3/tmp/rustconf;
    startx /usr/bin/i3 -c /home/omarabid/.config/i3/tmp/rustconf --;
fi

# 4 - Cascade
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty4 ]];
then
    cat /home/omarabid/.config/i3/config /home/omarabid/.config/i3/spaces/cascade > /home/omarabid/.config/i3/tmp/cascadeconf;
    startx /usr/bin/i3 -c /home/omarabid/.config/i3/tmp/cascadeconf --;
fi

# 5 - Abidcorp
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty5 ]];
then
    cat /home/omarabid/.config/i3/config /home/omarabid/.config/i3/spaces/abidcorp > /home/omarabid/.config/i3/tmp/acorpconf;
    startx /usr/bin/i3 -c /home/omarabid/.config/i3/tmp/acorpconf --;
fi

# 6 - Rust hired
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty6 ]];
then
    cat /home/omarabid/.config/i3/config /home/omarabid/.config/i3/spaces/rusthired > /home/omarabid/.config/i3/tmp/rhconf;
    startx /usr/bin/i3 -c /home/omarabid/.config/i3/tmp/rhconf --;
fi

# 7 - derive aplha
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty7 ]];
then
    cat /home/omarabid/.config/i3/config /home/omarabid/.config/i3/spaces/daplha > /home/omarabid/.config/i3/tmp/daconf;
    startx /usr/bin/i3 -c /home/omarabid/.config/i3/tmp/daconf --;
fi

export PATH=/home/omarabid/.local/bin:$PATH
export GNUPGHOME=/home/omarabid/.gnupg/ledger
export PATH=/home/omarabid/go/bin:$PATH
