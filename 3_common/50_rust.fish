set -l bin_paths \
  $HOME/.cargo/bin

for path in $bin_paths
    if test -d $path
        debug "Adding dir to PATH: '$path'"
        fish_add_path -g $path
    end
end

