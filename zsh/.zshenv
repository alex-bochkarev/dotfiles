typeset -U PATH path
path=("$HOME/opt/emacs/bin" "$HOME/opt/bin" "$path[@]")
export PATH

export XDG_DATA_DIRS=$HOME/opt/emacs/share/applications:$HOME/opt/share/applications:$XDG_DATA_DIRS
