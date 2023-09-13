typeset -U PATH path
path=("$HOME/.local/bin" "$HOME/opt/emacs/bin" "$HOME/opt/bin" "$HOME/.config/emacs/bin" "$HOME/opt/beancount/bin" "$path[@]")
export PATH
export PYTHONPATH=$PYTHONPATH:$HOME/opt/beancount

export XDG_DATA_DIRS=$HOME/opt/emacs/share/applications:$HOME/opt/share/applications:$XDG_DATA_DIRS
