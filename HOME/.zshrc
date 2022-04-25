# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# $PATH
export PATH=~/.forgit/bin:~/.dotnet/tools:/usr/local/go/bin:~/tools:~/.local/bin:$PATH

export ALTERNATE_EDITOR=""
export EDITOR="vim"                         # $EDITOR opens in terminal
export VISUAL="code"                        # $VISUAL opens in GUI mode
export DEFAULT_USER=cbocardo
export GPG_TTY=$(tty)                       # for gpg

HISTFILE=~/.zsh/zsh_history
HISTSIZE=50000
SAVEHIST=10000

setopt auto_cd
setopt cdable_vars                          # directory aliases for cd command
setopt complete_in_word                     # complete within a word/phrase
setopt correctall                           # spelling correction for commands
setopt hist_expire_dups_first
setopt hist_find_no_dups
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_reduce_blanks
setopt hist_verify
setopt ignoreeof                            # Ctrl-D won't kill the session
setopt inc_append_history
setopt no_case_glob                         # case-insensitive globbing
setopt noclobber                            # don't overwrite existing files
setopt share_history


# directory history
# see http://zsh.sourceforge.net/Intro/intro_6.html
DIRSTACKSIZE=10
setopt autopushd pushdminus pushdsilent pushdtohome
alias dh='dirs -v'

autoload -U compinit && compinit            # zsh-completions
zstyle ':completion:*' list-colors 'di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
#zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true
zstyle ':completion:*' expand list-suffixes # partial completion suggestions
zstyle ':completion:*' expand prefix suffix # partial completion suggestions

# case insensitive path-completion
# from https://scriptingosx.com/2019/07/moving-to-zsh-part-5-completions/
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*'



# show when running in a shell that was spawned by ranger
if [ -n "$RANGER_LEVEL" ]; then export PS1="[ranger]$PS1"; fi
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

fpath=(/usr/local/share/zsh-completions $fpath) # activate zsh-completions
fpath=(~/.zsh/zsh-completions $fpath)           # activate zsh-completions

bindkey -e                                      # emacs key-bindings
bindkey '^y' autosuggest-accept                 # for zsh-autosuggestions
bindkey '^i' expand-or-complete

source ~/.zsh/fzf_config.zsh # load fzf

source ~/powerlevel10k/powerlevel10k.zsh-theme
source ~/.config/broot/launcher/bash/br

# ~/.zsh directory
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/aliases.zsh # custom aliases
source ~/.zsh/funcs.zsh

# forgit
export FORGIT_NO_ALIASES=1
source ~/.forgit/forgit.plugin.zsh

[[ -f ~/.zsh/machine-specific-aliases.zsh ]] && source ~/.zsh/machine-specific-aliases.zsh # not in source control

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
