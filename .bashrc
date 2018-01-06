# Prompt outputs the response code of the last command
PS1='\W$( RET=$?; if [ $RET != 0 ] ; then echo "\[\033[0;91m\] NonZeroResponseCode: $RET \[\033[m\]"; fi ) \$ '

#Adding colors to console output
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced


# Aliases
alias cll='clear && ll'
alias clla='clear && lla'
alias ll='ls -ltr'
alias lla='ls -ltra'
alias lsi='less -i'

alias gs='git status -s'
alias gc='git commit'
alias ga='git add'
alias gl='git log --oneline --decorate'
alias gd='git diff'
alias gb='git branch'
alias gcm='git commit -m'
alias gco='git checkout'
alias gcom='gco master'

alias dokrn='docker run -it'
alias dokup='docker-compose up'
alias dokstp='docker-compose stop'
alias dokbld='docker build .'
alias doki='docker images'
alias dokrmi='docker rmi'
alias dokp='docker ps'
alias dokpa='docker ps -a'

alias mci='mvn clean install'
alias mct='mvn clean test'


# Create links to alias for all projects
for i in $(ls /Users/henock/Documents/code); do  alias cd-$i='cd /Users/henock/Documents/code/'$i; done


#Adding colors to console output
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced


MAVEN_OPTS="-Xms256m -Xmx512m"
