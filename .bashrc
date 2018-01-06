tRed="$(tput setaf 196)"
tBold="$(tput bold)"
tBlue="$(tput setaf 040)"
tReset="$(tput sgr0)"
tGreen="$(tput setaf 034)"
tBlack="$(tput setaf 0)"
tOrange="$(tput setaf 166)"

parse_git_branch() {
   git branch 2> /dev/null | grep '^*' |  sed 's/* \(.*\)/ (\1)/g'
}

show_non_zero_response_code(){
   RETURN_CODE=$?;
   if [[ $RETURN_CODE != 0 ]] ; then 
      echo -e "\n${tRed}** Non zero response code=${RETURN_CODE} **"; 
   fi
}


PS1='\n\[${tBold}\]'                        # New line and start bold
PS1+='\[${tOrange}\]\u \[${tBlack}\]at '    # username in orange
PS1+='\[${tBlue}\]\h '                      # host in blue   
PS1+='\[${tBlack}\]in \[${tGreen}\]\w'      # working dir in green
PS1+='$(show_non_zero_response_code)'       # If response code from last command is not zero then echo Non zero response code=<response code>
PS1+='\[${tBlack}\]$(parse_git_branch)'     # Show git branch if present
PS1+='\[${tReset}\]\n\$ '                   # echo $ iether way   


#Adding colors to console output
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced


MAVEN_OPTS="-Xms256m -Xmx512m"


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
