parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

GREEN="\[$(tput setaf 2)\]"
LBLUE="\[$(tput setaf 6)\]"
YELLOW="\[$(tput setaf 11)\]"
RESET="\[$(tput sgr0)\]"

export PS1="${LBLUE}\u ${YELLOW}\w${GREEN}\$(parse_git_branch)${RESET}\n$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

if [ "$_pre" != "yes" ]; then
 echo "loading pre command"
 source ~/.bash/.precommand
 pre_install
 _pre="yes"
fi
