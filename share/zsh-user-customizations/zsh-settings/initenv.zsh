package_dir=$(dirname $_)

# Setup terminal for colors
if [[ -n $TMUX ]] ; then
		export TERM=screen-256color
else
		export TERM=xterm-256color
fi

# mkdir -p tools/{bin,include,etc,lib,sbin,share,src,stow} tools/share/{man,info}
# ln -rs tools/share/man tools/man
# ln -rs tools/share/info tools/info
if [[ -d $HOME/tools ]]; then
		path=($HOME/tools/bin $HOME/tools/sbin $path); export PATH
		manpath=($HOME/tools/man $manpath :); export MANPATH
		infopath=($HOME/tools/info $infopath :); export INFOPATH
fi

# This stays ad the bottom fo the file,
# and ensures there are no duplicates in $PATH/$path ...etc
typeset -U fpath path manpath infopath
