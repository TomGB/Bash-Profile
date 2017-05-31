source $(brew --prefix nvm)/nvm.sh

source ~/.bash/.git_complete
source ~/.bash/.git_commands

alias killport='sh ~/.killport $1'

alias matrix='cmatrix'
alias w='curl wttr.in/leeds'

alias skyid='echo "212857" | pbcopy && pbpaste'

alias server='python -m SimpleHTTPServer'
alias phpserver='php -S localhost:8000'
alias octave='/usr/local/octave/3.8.0/bin/octave-3.8.0'
alias mysql=/usr/local/mysql/bin/mysql
alias mysqladmin=/usr/local/mysql/bin/mysqladmin
alias cqlsh='cqlsh --keyspace mldata'
alias chrome="open -a \"Google Chrome\""

alias fly="curl -s -O 'http://www.activeedge.co.uk/booking/daily-briefing.php' > /dev/null && sed -n '111p' daily-briefing.php && rmy daily-briefing.php"

alias cl="fc -e -|pbcopy"

alias cpu='top -o cpu'
alias mem='top -o rsize' # memory

alias g='googler -n 3'
alias go='googler -j'
alias ip='curl ipecho.net/plain; echo'
alias localip='ipconfig getifaddr en0'
alias mkdir='mkdir -pv'

alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'

alias n='terminal-notifier -title "Terminal" -message "Done with task!"'
alias c='clear'
alias d='date'
alias t='date'
alias b="cd -"
alias l="lock"
alias h='cd ~/'
alias now='date +%s | pbcopy && pbpaste'

alias lock='pmset displaysleepnow'
alias nosleep="caffeinate"
enc(){ openssl enc -aes-256-cbc -e -in $1 -out $1.enc; }
dec(){ name=$1;openssl enc -aes-256-cbc -d -in $name -out ${name/.enc/}; }

alias cpwd='pwd|tr -d "\n"|pbcopy'
alias ls='ls -GFh'
alias lso='"ls" -Art1 && echo "--Newest--"'
# make sure bc start with standard math library
alias bc='bc -l'
# protect cp, mv, rm command with confirmation
alias cp='cp -i'
alias mv='mv -i'
alias vm=mv
alias rm='rm -i'
alias rmy="'rm'"
alias grep='grep --color'
cd() {
builtin cd "$@";
if [ -f ./.nvmrc ]; then
    nvm use
fi
ls;
}

alias abash='atom ~/.bash_profile'
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

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
