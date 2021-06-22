# run .zprofile if it exists
config="$ZDOTDIR/.zprofile"
[[ -f $config ]] && source "$config"
