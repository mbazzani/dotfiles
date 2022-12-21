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


export OPENAI_API_KEY="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"
export KEYTIMEOUT=1

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/mb/.mambaforge/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/mb/.mambaforge/etc/profile.d/conda.sh" ]; then
        . "/home/mb/.mambaforge/etc/profile.d/conda.sh"
    else
        export PATH="/home/mb/.mambaforge/bin:$PATH"
    fi
fi
unset __conda_setup

if [ -f "/home/mb/.mambaforge/etc/profile.d/mamba.sh" ]; then
    . "/home/mb/.mambaforge/etc/profile.d/mamba.sh"
fi
# <<< conda initialize <<<


#Starship prompt
SPACESHIP_PYENV_SHOW=false
eval "$(starship init zsh)"

