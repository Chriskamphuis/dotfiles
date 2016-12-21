shopt -s checkwinsize

export HISTCONTROL=erasedups
export HISTFILESIZE=NOTHING
export HISTSIZE=NOTHING
shopt -s histappend
export PROMPT_COMMAND='history -a'

export TERMINAL=urxvt
export EDITOR=vim
export TERM=screen
export BROWSER=firefox
export PAGER=less

alias grep='grep --color=auto'
alias vi=vim
alias c='clear'
alias h='history'
alias l='ls'
alias tb="nc termbin.com 9999"

set_prompt(){
	last_c=$?
	PS1='\u@\h'
	[[ $last_c -ge 1 ]] && PS1="($last_c) $PS1"
	PS1="$PS1\w\$ "
}
PROMPT_COMMAND='set_prompt'

# Unzip
function extract() 
{
	if [ -f $1 ] ; then
		case $1 in
			*.tar.bz2)	tar xvjf $1 	;;
			*.tar.gz)		tar xvzf $1 	;;
		 	*.bz2) 		  bunzip x $1 	;;
			*.rar) 			unrar x $1  	;;
			*.gz)				gunzip $1   	;;
			*.tar)			tar xvf $1 		;;
			*.tbz2)			tar xvjf $1 	;;
			*.tgz) 			tar xvzf $1 	;;
			*.zip)      unzip $1     	;;
			*.Z) 				uncompress $1 ;;
			*.7z)				7z x $1				;;
			*)					echo"'$1' cannot be extracted via >extract<" ;;
		esac
	else
		echo "'$1' is not a valid file!"
	fi
}
