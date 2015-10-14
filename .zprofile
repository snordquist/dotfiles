# colorful file listings
eval $(dircolors ~/.dir_colors)

# color wrappers for common commands
export PATH=$(cope_path):$PATH

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
