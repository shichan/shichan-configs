# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

#wtb repos
alias wtb='cd $HOME/wtb'
alias gf='cd $HOME/wtb/wanderful'
alias gfd='cd $HOME/wtb/wanderful/godfather-django'
alias gfa='cd $HOME/wtb/wanderful/godfather-angular'
alias gfs='cd $HOME/wtb/wanderful/godfather-scripts'
alias gfbt='cd $HOME/wtb/wanderful/godfather-bookingtool'

