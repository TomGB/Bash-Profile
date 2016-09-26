
alias n='terminal-notifier -title "Terminal" -message "Done with task!"'

alias octave='/usr/local/octave/3.8.0/bin/octave-3.8.0'

alias server='python -m SimpleHTTPServer'
alias lock='pmset displaysleepnow'

alias mysql=/usr/local/mysql/bin/mysql
alias mysqladmin=/usr/local/mysql/bin/mysqladmin
alias cqlsh='cqlsh --keyspace test'

export SLACK_TOKEN=

alias ls='ls -GFh'

alias fly="curl -s -O 'http://www.activeedge.co.uk/booking/daily-briefing.php' > /dev/null && sed -n '111p' daily-briefing.php && rmy daily-briefing.php"

# add and remove new/deleted files from git index automatically
alias gitar="git ls-files -d -m -o -z --exclude-standard | xargs -0 git update-index --add --remove"
# git push
alias gpd="git push origin dev"
alias gpm="git push origin master"
# Remove git from a project
alias ungit="find . -name '.git' -exec rm -rf {} \;"
alias gits="git status"
alias pull="git pull"
alias push="git push"
alias add="git add *"
alias gitc="git commit -m"
alias commit="git add . && git add -u && git commit"
alias status="git status"
alias branch="git branch"

alias cl="fc -e -|pbcopy"

alias cpu='top -o cpu'
alias mem='top -o rsize' # memory

alias cpwd='pwd|tr -d "\n"|pbcopy'

alias lso='"ls" -Art1 && echo "--Newest--"'

alias chrome="open -a \"Google Chrome\""

alias g='googler -n 3'
alias go='googler -j'
alias ip='curl ipecho.net/plain; echo'
alias localip='ipconfig getifaddr en0'
alias mkdir='mkdir -pv'

alias home='cd ~/'

alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'

alias c='clear'
alias d='date'
alias t='date'
alias b="cd -"
alias l="lock"
# make sure bc start with standard math library
alias bc='bc -l'
# protect cp, mv, rm command with confirmation
alias cp='cp -i'
alias mv='mv -i'
alias vm=mv
alias rm='rm -i'
alias rmy="'rm'"
alias grep='grep --color'

alias ebash='vim ~/.bash_profile'
alias lbash='cat ~/.bash_profile'
alias ubash='source ~/.bash_profile'

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
 source ~/.precommand
 pre_install
 _pre="yes"
fi
