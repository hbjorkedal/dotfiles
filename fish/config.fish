# Check if 'lsd' command exists before setting aliases in an interactive session
alias l='lsd'
alias la='lsd -a'
alias lla='lsd -la'
alias lt='lsd --tree'


# Initialize Starship prompt
starship init fish | source

# Ensure Homebrew's bin directory is in PATH
set -g PATH /opt/homebrew/bin $PATH

# Load Homebrew environment for Fish shell
if type -q brew
    eval (/opt/homebrew/bin/brew shellenv)
end


