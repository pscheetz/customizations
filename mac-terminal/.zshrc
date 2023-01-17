if [[ $TERM_PROGRAM != "WarpTerminal" ]]; then
##### WHAT YOU WANT TO DISABLE FOR WARP - BELOW

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

##### WHAT YOU WANT TO DISABLE FOR WARP - ABOVE
fi

eval "$(starship init zsh)"
SPACESHIP_PROMPT_ASYNC=FALSE

# Aliases
alias ls='ls --color=auto'
alias ll='ls -alh'
alias llt='ls -alth'
alias flushdns='sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder | echo "DNS Flushed"'
