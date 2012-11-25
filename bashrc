# .bashrc

# User specific aliases and functions
alias la='ls -lAh';
alias ll='ls -lh';
alias rm='rm -i';
alias ..='cd ..'
alias ...='cd ../..'

# vi mode
set -o vi

# Colored prompt with user@host and location on first line and prompt on second.
PS1='\[\e[0;33m\][\[\e[0;35m\]\u@\h \[\e[0;32m\]\w \[\e[0;33m\]]\[\e[0;36m\]\n\$\[\e[0m\] '

# Git stuff
if [ -f ~/.git-completion.bash ]; then
	source ~/.git-completion.bash


	# Colored prompt with user@host and location and git stuff on first line and prompt on second.
	PS1='\[\e[0;33m\][\[\e[0;35m\]\u@\h \[\e[0;32m\]\w\[\e[0;34m\]$(__git_ps1 " (%s)") \[\e[0;33m\]]\[\e[0;36m\]\n\$\[\e[0m\] '

fi



# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
