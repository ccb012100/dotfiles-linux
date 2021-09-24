# zsh aliass

# cd aliases
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

# ls
alias l='ls'
alias la='ls -a'
alias ll='ls -l'
alias lal='ls -al'
alias lla='ls -la'

alias bat='batcat'
alias c.='code .'              # open current directory in VS Code
alias cls='clear'              # clear screen
alias dc='docker compose'
alias g='git'
alias gr='go run .'
alias grep='grep --color=auto'
alias jq='jq -C'               # colorize json
alias lec='echo $?'            # last exit code
alias ls='exa'                 # use exa as ls replacement
alias powershell='pwsh'
alias py='python3'
alias ripgrep='rg'
alias sesh='tmux new-session -A -s sesh'
alias tree='exa --tree'

# cargo (rust)
alias cr='cargo run'
alias cb='cargo build'
alias cc='cargo check'

# dotfiles configuration management
alias dotfiles-upgrade='~/.dotfiles/rsync-dotfiles.zsh'
alias cd-dotfiles='cd ~/.dotfiles'

# directory aliases
export ccb=~/ccb012100