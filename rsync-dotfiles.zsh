# Sync config dotfiles to git repository
# to run every day at 12:00,
# run `crontab -e` and add the following line:
# "0 12 * * * ~/.rsync-files.zsh"

# -n : Dry run the command without transferring files
# --list-only : Only show the list of files that rsync would transfer
# -P : Show progress per file
# -v : Show progress overall, outputting information about each file as it completes it
# -u : Skip updating target files if they are newer than the source

#########
# $HOME #
#########

rsync -avuP --progress \
      ~/.zshrc \
      ~/.dotfiles/dotfiles/

rsync -avuP --progress \
      ~/.tmux.conf \
      ~/.dotfiles/dotfiles/

#################
# $HOME/.config #
#################

rsync -avuP --progress \
      ~/.config/bat/bat.conf \
      ~/.dotfiles/dotfiles/.config/bat/

rsync -avuP --progress \
      ~/.config/gh/config.yml \
      ~/.dotfiles/dotfiles/.config/gh/

rsync -avuP --progress \
      ~/.config/nvim/init.vim \
      ~/.dotfiles/dotfiles/.config/nvim/

##############
# $HOME/.zsh #
##############

rsync -avuP --progress \
      ~/.zsh/aliases.zsh \
      ~/.dotfiles/dotfiles/.zsh/

rsync -avuP --progress \
      ~/.zsh/unalias.zsh \
      ~/.dotfiles/dotfiles/.zsh/

rsync -avuP --progress \
      ~/.zsh/zsh-completions \
      ~/.dotfiles/dotfiles/.zsh/
