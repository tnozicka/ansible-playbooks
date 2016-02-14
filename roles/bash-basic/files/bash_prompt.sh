function set_bash_prompt() {
    local rc=$?
	
    if [ $rc -eq 0 ]; then
        local exit_status='\[\e[1;32m\]'$'\u2714''\[\e[0m\]'
    else
        local exit_status='\[\e[1;31m\]'$'\u2716'' ('$rc')\[\e[0m\]'
    fi

    if [ ${EUID} -eq 0 ]; then
        local user_color='\[\e[1;31m\]'
    else    
        local user_color='\[\e[1;32m\]'
    fi

    local set_teminal_title='\[\033]0;\u@\h: \w\007\]'

    PS1="[${user_color}\u\[\e[0m\]@\[\e[1;34m\]\H\[\e[0m\]] in \[\e[1;34m\]\w\[\e[0m\]\n${exit_status} [${user_color}\s\[\e[0m\]] ${user_color}\$\[\e[0m\] "
        
    case $TERM in
        xterm*)
            PS1=${set_teminal_title}${PS1}
            ;;
        *)  
            ;;
    esac

    return $rc
}

export PROMPT_COMMAND="set_bash_prompt; ${PROMPT_COMMAND}"
