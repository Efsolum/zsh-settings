package_dir=$(dirname $_)

source $package_dir/autoloads.zsh
source $package_dir/keybindings.zsh
source $package_dir/options.zsh
source $package_dir/aliases.zsh

export EDITOR="emacsclient -s projects -t"
export VISUAL="emacsclient -s projects -c"

export HISTSIZE=100000
export SAVEHIST=$HISTSIZE
export HISTFILE=$ZDOTDIR/history

# gnupg & gnupg2 config & data directory
export GNUPGHOME=$XDG_CONFIG_HOME/gnupg

# Git config file path
export GIT_CONFIG=$XDG_CONFIG_HOME/gitconfig

zfunctions=$package_dir/zfunctions/index
[[ -f $zfunctions ]] && \
		source $zfunctions
unset zfunctions

# This stays ad the bottom fo the file,
# and ensures there are no duplicates in $PATH/$path ...etc
typeset -U fpath path manpath infopath
