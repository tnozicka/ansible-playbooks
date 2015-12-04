PS1_SET_TERMINAL_TITLE='\[\033]0;\u@\h: \w\007\]'
PS1_MESSAGE='[\[$(if [[ ${EUID} == 0 ]]; then echo "\e[1;31m"; else echo "\e[1;32m"; fi)\]\u\[\e[0m\]@\[\e[1;34m\]\h\[\e[0m\] \W]\[\e[1;34m\]\$\[\e[0m\] '
case $TERM in
    xterm*)
        PS1=${PS1_SET_TERMINAL_TITLE}${PS1_MESSAGE}
        ;;
    *)  
        PS1=${PS1_MESSAGE}
        ;;
esac

