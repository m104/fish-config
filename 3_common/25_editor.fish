if which nvim > /dev/null
    debug "Detected nvim"
    set -g vim_cmd nvim
else
    debug "No nvim detected; using vim"
    set -g vim_cmd vim
end

debug "Setting EDITOR to $vim_cmd"
set -x EDITOR $vim_cmd
debug "Setting VISUAL to $vim_cmd"
set -x VISUAL $vim_cmd
