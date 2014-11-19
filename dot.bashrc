## Default shell configuration
#
# set prompt
#
case ${UID} in
0)
    PS1='\[\033[1;31m\]\W\$\[\033[0m\] '
    PS2='\[\033[1;31m\]>\[\033[0m\] '
    [ -n "${REMOTEHOST}${SSH_CONNECTION}" ] && PS1='\[\033[1;30m\]\h'" ${PS1}"
    ;;
*)
    PS1='\[\033[1;31m\]\W\$\[\033[0m\] '
    PS2='\[\033[31m\]>\[\033[0m\] '
    [ -n "${REMOTEHOST}${SSH_CONNECTION}" ] && PS1='\[\033[37m\]\h'" ${PS1}"
    ;;
esac

# set terminal title including current directory
#
case "${TERM}" in
kterm*|xterm)
    PROMPT_COMMAND='echo -e "\033]0;'"${USER}@${HOSTNAME%%.*}:"'${PWD}\007\c"'
    ;;
esac 