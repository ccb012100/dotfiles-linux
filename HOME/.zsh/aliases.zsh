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
alias llt='exa -l -t modified --sort newest'
alias llat='exa -al -t modified --sort newest'

## built-in tools
alias apt-up='sudo apt update && sudo apt upgrade'
alias cls='clear'                           # clear screen
alias grep='grep --color=auto'
alias lec='echo $?'                         # last exit code
alias print-path='echo ${PATH//:/$"\n"}'    # print $PATH in human-readable format

# external tools
alias tree='exa --tree'
alias sesh='tmux new-session -A -s sesh'
alias ripgrep='rg'
alias py='python3'
alias powershell='pwsh'
alias jq='jq -C'                            # colorize json
alias gf='git forgit'
alias gr='go run .'
alias g='git'
alias dot-r='dotnet run'
alias dot-b='dotnet build'
alias dc='docker compose'
alias c.='code .'                           # open current directory in VS Code
alias bat='batcat'
alias pn='pnpm'
alias npm='echo "use pn/pnpm"'

# .zshrc
alias zedit="vim $HOME/.zshrc"
alias zsource="source $HOME/.zshrc"

# cargo (rust)
alias cr='cargo run'
alias cb='cargo build'
alias cc='cargo check'

# dotfiles configuration management
alias cd-dotfiles='cd ~/.dotfiles'

# directory aliases
export ccb=~/ccb012100

# global aliases
alias -g zf='| fzf' # pipe into fzf
