# Use the starship prompt
eval "$(starship init zsh)"
ENABLE_CORRECTION="false" # Disables autocorrect... kinda annoying

# Enables plugins
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

# Aliases
alias ls='ls --color=auto'
alias ll='ls -alh'