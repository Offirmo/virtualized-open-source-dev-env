echo "* hello from: …open-source-dev-env/shellrc/settings.sh"

## remove duplicated bash history https://askubuntu.com/a/15929
export HISTCONTROL=ignoreboth:erasedups

## set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

if [ "$color_prompt" = yes ]; then
	## with user + machine (not very useful if always the same)
	#PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
	PS1=' \[\033[01;34m\]\w\[\033[00m\] —► '
else
	PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi

## enable color support of ls and also add handy aliases
if [ "$color_prompt" = yes ]; then
    ## https://apple.stackexchange.com/questions/33677/how-can-i-configure-mac-terminal-to-have-color-ls-output/33678?newreg=ead977f7838b41bba240c9e030f4b005
    export CLICOLOR=1
    alias ls='ls -Gp'

    ## TODO evaluate
    #export LSCOLORS=ExFxBxDxCxegedabagacad

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

unset color_prompt force_color_prompt

## enable brew autocomplete
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

## disable sentry and other stuff
export OFFIRMO_IS_HERE=1
