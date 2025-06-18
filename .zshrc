autoload -Uz compinit
compinit

eval "$(starship init zsh)"

source ~/.zsh_aliases

# Display Message of the Day (MOTD)
fastfetch
fortune
