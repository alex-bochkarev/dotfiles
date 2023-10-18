typeset -U PATH path
path=("$HOME/.local/bin" "$HOME/opt/emacs/bin" "$HOME/opt/bin" "$HOME/.config/emacs/bin" "$HOME/opt/beancount/bin" "$path[@]")
export PATH
export PYTHONPATH=$PYTHONPATH:$HOME/opt/beancount

export XDG_DATA_DIRS=$HOME/opt/emacs/share/applications:$HOME/opt/share/applications:$XDG_DATA_DIRS

# Gurobi-specific vars
export GUROBI_HOME="$HOME/opt/gurobi1003/linux64"
export PATH="${PATH}:${GUROBI_HOME}/bin"
export LD_LIBRARY_PATH="${LD_LIBRARY_PATH}:${GUROBI_HOME}/lib"
export GRB_LICENSE_FILE=/home/bochkare/.config/gurobi/gurobi.lic
