YELLOW="\[\033[1;33m\]"
NO_COLOR="\[\033[0m\]"
GREEN="\[\033[1;32m\]"
BLUE="\[\033[01;34m\]"

# Git branch in prompt
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ [\1]/'

}

# Homebrew installations will get precedence over stock osx binaries
export PATH=/usr/local/bin:$PATH

# VirtualEnvWrapper
export WORKON_HOME=~/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.
# use ~/.aliases to be accessible on both bash and zsh
if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

PS1="\[$GREEN\]\t\[$RED\]-\[$YELLOW\]\u@\h:\[$BLUE\]\[$BLUE\]\w\[\033[m\]\[$GREEN\]\$(parse_git_branch)\[$NO_COLOR\]\n\$ "


export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
