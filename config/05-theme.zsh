# Theme style 
export ALIEN_THEME="gruvbox"

# Left Prompt
export ALIEN_SECTIONS_LEFT=(
  user
  path
  vcs_branch:async
  vcs_dirty:async
  newline
  ssh
  venv
  prompt
)

# Colored man pages
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;38;5;74m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[38;33;246m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[04;38;5;146m'
