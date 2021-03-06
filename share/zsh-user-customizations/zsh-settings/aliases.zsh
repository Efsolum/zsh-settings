# Directory related aliases
# setopt AUTO_PUSHD
alias ds="dirs -v"
alias pd=popd

# Project related
alias lpe=load_project_env
alias npd=new_project_dir

# Flash/Portable drive related aliases
if [[ -f $(which udisksctl) ]]; then
		alias uds="udisksctl status"
		alias udm="udisksctl mount --block-device"
		alias udu="udisksctl unmount --block-device"
		alias udi="udisksctl info --block-device"
fi

#miscellaneous aliases
alias noblank='xset -dpms; xset s off'
alias lockscreen='i3lock -d -c 000070'
alias zshrc='source $ZDOTDIR/.zshrc'
alias src="source $ZDOTDIR/.z{shenv,shrc,login}"
alias rzsh='exec env -i LANG=$LANG zsh -li'
alias rpane='tmux respawn-pane -k'

# APT aliases
if [[ -f $(which apt-cache) ]]; then
		alias apts='apt-cache search'
		alias aptf='apt-file search'
		alias aptu="print 'apt-get update && apt-file update' | sudo zsh -s"
		alias apti='sudo apt-get install'
		alias aptp='apt-cache policy'
		alias aptm='apt-cache madison'
fi

# SSH aliases
alias ssha=ssh-add
alias sshl="ssh-add -L"
alias sshx="ssh-add -x"
alias sshX="ssh-add -X"

# Sync aliases
if [[ -f $(which unison) ]]; then
		alias syncpersonal="unison personal -batch; unison personal"
		alias syncprojects="unison projects -batch; unison projects"
		alias syncarchived="unison archived -batch; unison archived"
		alias syncstow="unison stow -batch; unison stow"
fi
