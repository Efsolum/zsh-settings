package_dir=$(dirname $_)

source $package_dir/autoloads.zsh
source $package_dir/keybindings.zsh
source $package_dir/options.zsh
source $package_dir/aliases.zsh

export HISTSIZE=100000
export SAVEHIST=$HISTSIZE
export HISTFILE=$ZDOTDIR/history

zfunctions=$package_dir/zfunctions/index
[[ -f $zfunctions ]] && \
		source $zfunctions
unset zfunctions
