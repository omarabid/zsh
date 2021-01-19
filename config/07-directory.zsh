# Changing directories
setopt auto_cd
setopt auto_pushd
unsetopt pushd_ignore_dups
setopt pushdminus

# Run exa after cd
autoload -U add-zsh-hook
add-zsh-hook -Uz chpwd (){ source_env; }
