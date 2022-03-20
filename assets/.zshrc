# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
	source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Prompt
PROMPT='%B%F{2}%n@%m:%B%F{12}%~%f%b$ '
export LS_COLORS=di="01;34"

if [ -x $HOME/.zsh/completion ]; then
  fpath=(~/.zsh/completion $fpath)
fi

# General Alias
alias ls='ls --color=auto'
alias la='ls -la --color=auto -h --time-style=long-iso'

# Zsh Option
setopt hist_ignore_dups
setopt hist_save_no_dups
setopt hist_expand
setopt share_history
setopt inc_append_history

autoload -Uz compinit
compinit -C