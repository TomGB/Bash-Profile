
source ~/.bash/.git_complete

source ~/.bash/.git_commands

alias nosleep="caffeinate"

enc(){
openssl enc -aes-256-cbc -e -in $1 -out $1.enc
}

dec(){
name=$1;
echo $name;
openssl enc -aes-256-cbc -d -in $name -out ${name/.enc/};
}

#pkill -f my_pattern

alias skyid='echo "212857" | pbcopy && pbpaste'

alias n='terminal-notifier -title "Terminal" -message "Done with task!"'

alias octave='/usr/local/octave/3.8.0/bin/octave-3.8.0'

alias server='python -m SimpleHTTPServer'
alias lock='pmset displaysleepnow'

alias mysql=/usr/local/mysql/bin/mysql
alias mysqladmin=/usr/local/mysql/bin/mysqladmin
alias cqlsh='cqlsh --keyspace mldata'

export SLACK_TOKEN=xoxp-2558538308-57957110065-69306004519-c98f5cfc0a
alias ls='ls -GFh'

alias fly="curl -s -O 'http://www.activeedge.co.uk/booking/daily-briefing.php' > /dev/null && sed -n '111p' daily-briefing.php && rmy daily-briefing.php"

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
alias now='date +%s | pbcopy && pbpaste'
cd() { builtin cd "$@" && ls; }

# make sure bc start with standard math library
alias bc='bc -l'
# protect cp, mv, rm command with confirmation
alias cp='cp -i'
alias mv='mv -i'
alias vm=mv
alias rm='rm -i'
alias rmy="'rm'"
alias grep='grep --color'

alias ebash='vim ~/.bash_profile && ubash'
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
 source ~/.bash/.precommand
 pre_install
 _pre="yes"
fi
