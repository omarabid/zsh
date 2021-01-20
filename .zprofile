## Load configuration files
##
for config ($(dirname ${(%):-%x})/config/*.zsh) source $config

# Load Antigen plugin manager
source $(dirname ${(%):-%x})/antigen/antigen.zsh

## Custom Plugins 
source $(dirname ${(%):-%x})/plugins/zsh-dotenv/dotenv.plugin.zsh
source /etc/profile.d/autojump.zsh

## Antigen Plugins 
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle Tarrasch/zsh-bd
antigen bundle zpm-zsh/clipboard
antigen bundle ChrisPenner/copy-pasta
antigen bundle desyncr/auto-ls
antigen theme romkatv/powerlevel10k
antigen bundle Aloxaf/fzf-tab
antigen bundle zsh-users/zsh-autosuggestions

antigen apply

ZSH_AUTOSUGGEST_STRATEGY=(history)
ZSH_AUTOSUGGEST_USE_ASYNC=true

##
## TODO: move from here
##
## Custom function for auto-ls
AUTO_LS_COMMANDS=(exa)
auto-ls-exa () {
    exa -la
}

#source $(dirname ${(%):-%x})/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh

# custom keybinds
bindkey "^[OC" autosuggest-accept

# i3 windows
source $(dirname ${(%):-%x})/i3.zsh
