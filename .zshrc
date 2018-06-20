# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
    source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
unsetopt correct
setopt AUTO_CD



export GITHUB_TOKEN="45d7fa23d02294e963c664b9ae70d6cbec5d596c"
export ZILLOW_TOKEN="X1-ZWz19mbl7rvle3_7rj5m"
export WALK_SCORE_TOKEN="945f4ad3474974b065c6b51956241de2"
export GROUPME_TOKEN="kIfXwZDFbKfllA7ThWDjwUVWuw0qPCuEBoMNvsxB"


# aliases
alias tiyo='cd ~/Documents/The_Iron_Yard'
alias gp='git push'
alias nyan='curl -sL http://bit.ly/1KK1GD9 | ruby'
alias com='~/Documents/desktop_stuff/easy_commit/auto_commit.sh'
alias ttt='cd ~/Documents/desktop_stuff/ttt/ && ruby runner.rb && cd ->/dev/null 2>&1'
alias profile='vim ~/.zshrc && source ~/.zshrc && echo "zshrc successfully sourced"'
alias hh='cd /Users/chris/Documents/The_Iron_Yard/final_project/house_house'
alias k=clear
alias sl='ls'
alias secure='cd ~/Documents/216projects && ~/Desktop/easy_commit/scp.sh'
alias dog='~/Documents/desktop_stuff/easy_commit/dog.sh'
alias vimrc='vim ~/.vimrc'
alias apt-get='brew'
alias py='python'
alias fuck='sudo $(history -p \!\!)'
alias reverse='cd ~/Desktop/hacs208e'
alias fork_shit_up='echo ":(){:|:&};:"'
alias r2='r2 -AA'
alias rocket_league='cd /Users/chris/Applications/Rocket\ League.app/Contents/MacOS/ && ./run.sh && cd ->/dev/null'

#
# alias s='spotify'
# alias sweden='spotify play uri spotify:user:spotifycharts:playlist:37i9dQZEVXbLoATJ81JYXz'

alias pause='spotify pause'
alias play='spotify play'
alias next='spotify next'

# school shit
alias llama='ssh -Y clai88@grace.umd.edu'

alias junior='cd ~/Documents/Chris.UMD/Fall2017'
remove_leading_zeroes_from_hermans_fucking_file_names(){
    echo 'for f in public0*.c; do mv "$f" "${f/0/}"; done'
}



export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

#stupid gcc aliases that fuck up my 216 projects
# alias gcc='gcc -ansi -pedantic-errors -Wall -Werror -Wshadow -Wwrite-strings'
# alias c='clear'


##pretty colors
alias ls='ls -G'

alias pre='cd $_'

alias cpu-temp='/Users/chris/Downloads/osx-cpu-temp/osx-cpu-temp'


#goof 
alias ws='python ~/Documents/desktop_stuff/test/wheat_sub.py'
alias tux='python ~/Documents/desktop_stuff/test/tux.py'

# OPAM configuration
. /Users/chris/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

export ZPLUG_HOME=/usr/local/opt/zplug
# zplug tysonwolker/iterm-tab-colors

alias pg-start="launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"
alias pg-stop="launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"

set noclobber
alias abadi='cd ~/Documents/Chris.UMD/spring2018/cmsc424'
