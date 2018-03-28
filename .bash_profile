#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc
if [[ $- == *i* ]]; then
    export SHELL=$ZSH/oh-my-zsh.sh
    exec zsh -l
fi
