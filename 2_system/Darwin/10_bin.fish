set -l bin_paths \
    /usr/local/sbin \
    $HOME/Library/Python/3.8/bin

for path in $bin_paths
    if test -d $path
        debug "Adding dir to PATH: '$path'"
        set -x -p PATH $path
    end
end

