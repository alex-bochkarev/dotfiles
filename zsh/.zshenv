typeset -U PATH path
path=("$HOME/.local/bin" "$HOME/opt/emacs/bin" "$HOME/opt/bin" "$HOME/.config/emacs/bin" "$path[@]")
export PATH

export XDG_DATA_DIRS=$HOME/opt/emacs/share/applications:$HOME/opt/share/applications:$XDG_DATA_DIRS
