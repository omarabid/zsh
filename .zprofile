# Load Antigen plugin manager
source $(dirname ${(%):-%x})/antigen/antigen.zsh

# Syntax Highlighting
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle Tarrasch/zsh-bd
antigen bundle zpm-zsh/clipboard
antigen bundle ChrisPenner/copy-pasta
antigen theme romkatv/powerlevel10k

antigen apply

## Load Plugins
##
source $(dirname ${(%):-%x})/plugins/zsh-dotenv/dotenv.plugin.zsh
source /etc/profile.d/autojump.zsh

## Load configuration files
##
for config ($(dirname ${(%):-%x})/config/*.zsh) source $config

#source $(dirname ${(%):-%x})/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh

# custom keybinds
bindkey "^[OC" autosuggest-accept

## Clear terminal
clear

source $(dirname ${(%):-%x})/i3.zsh
