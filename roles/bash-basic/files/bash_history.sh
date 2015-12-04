export HISTSIZE=100000
export HISTFILESIZE=100000
# Avoid duplicates
export HISTCONTROL=ignoredups:erasedups
# When the shell exits, append to the history file instead of overwriting it
shopt -s histappend

# Save and reload the history after each command finishes
export PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

