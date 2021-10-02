# zsh aliass

# cd aliases
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

# ls
alias ls='exa'                              # use exa as ls replacement
alias l='ls'
alias la='ls -a'
alias ll='ls -l'
alias lal='ls -al'
alias lla='ls -la'

alias aptup='sudo apt update && sudo apt upgrade'
alias cls='clear'                           # clear screen
alias g='git'
alias grep='grep --color=auto'
alias lec='echo $?'                         # last exit code
alias print-path='echo ${PATH//:/$"\n"}'    # print $PATH in human-readable format
alias sesh='tmux new-session -A -s sesh'

alias bat='batcat'
alias c.='code .'                           # open current directory in VS Code
alias dc='docker compose'
alias dot-b='dotnet build'
alias dot-r='dotnet run'
alias gr='go run .'
alias jq='jq -C'                            # colorize json
alias powershell='pwsh'
alias py='python3'
alias ripgrep='rg'
alias tree='exa --tree'

# cargo (rust)
alias cr='cargo run'
alias cb='cargo build'
alias cc='cargo check'

# dotfiles configuration management
alias cd-dotfiles='cd ~/.dotfiles'

# directory aliases
export ccb=~/ccb012100
