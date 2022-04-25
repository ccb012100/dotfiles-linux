# custom Zsh functions

# functions to cd then ls in one step
function cls { cd "$@" && ls }
function cla { cd "$@" && ls -a }
function cll { cd "$@" && ls -l }
function clal { cd "$@" && ls -al }
function clla { cd "$@" && ls -la }

# open new emacs-frame
function new-frame { emacsclient -e "(new-frame)" }