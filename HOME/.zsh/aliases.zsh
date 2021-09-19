# zsh aliass

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

alias ls='exa'               # use exa as ls replacement
alias tree='exa --tree'

alias lec='echo $?'          # last exit code
alias cls='clear'            # clear screen

alias sesh='tmux new-session -A -s sesh'

alias g='git'

alias grep='grep --colo=auto'

alias bat='batcat'
alias jq='jq -C'             # colorize json
alias powershell='pwsh'
alias py='python3'
alias ripgrep='rg'

# use Neovim instad of Vim
alias v='nvim'
alias vi='nvim'
alias vim='nvim'
alias vimdiff='nvim -d'

# cargo (rust)
alias cr='cargo run'
alias cb='cargo build'
alias cc='cargo check'

# docker
alias dc='docker compose'

# golang
alias gr='go run .'

# dotfiles configuration management
alias dotfiles-upgrade='~/.dotfiles/rsync-dotfiles.zsh'
alias cd-dotfiles='cd ~/.dotfiles'

# open current directory in VS Code
alias c.='code .'

# directory aliases
export ccb=~/ccb012100
