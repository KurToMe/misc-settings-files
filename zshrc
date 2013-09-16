# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' matcher-list 'm:{[:lower:]}={[:upper:]}' 'r:|[._-]=** r:|=**' 'l:|=* r:|=*'
zstyle ':completion:*' max-errors 2 numeric
zstyle ':completion:*' prompt 'edit-distance: %e'
zstyle :compinstall filename '/home/kmelby/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd extendedglob nomatch notify
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install

source ~/.alias


autoload -U colors && colors


local hg_prompts='$(hg_branch)$(hg_branch_age)'

PROMPT="%{$fg[yellow]%}%n@%m: %{$fg[blue]%}%d %{$fg[green]%} ${hg_prompts}
%{$fg[magenta]%}$%{$reset_color%} "

setopt promptsubst

# use cursor as indicator of vi mode #######
zle-keymap-select () {
    if [ $KEYMAP = vicmd ]; then
        if [[ $TMUX = '' ]]; then
            echo -ne "\033]12;Red\007"
        else
            printf '\033Ptmux;\033\033]12;red\007\033\\'
        fi
    else
        if [[ $TMUX = '' ]]; then
            echo -ne "\033]12;Grey\007"
        else
            printf '\033Ptmux;\033\033]12;grey\007\033\\'
        fi
    fi
}
zle-line-init () {
    zle -K viins
    echo -ne "\033]12;Grey\007"
}
zle -N zle-keymap-select
zle -N zle-line-init
##############################################
