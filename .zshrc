# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=500
SAVEHIST=2000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/mb/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

export PATH="/home/mb/.local/bin/:$PATH"

[ -f /opt/miniconda3/etc/profile.d/conda.sh ] && source /opt/miniconda3/etc/profile.d/conda.sh

#Starship prompt
SPACESHIP_PYENV_SHOW=false
eval "$(starship init zsh)"

pfetch
