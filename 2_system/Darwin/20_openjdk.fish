set -l bin_paths /usr/local/opt/openjdk/bin

for path in $bin_paths
    if test -d $path
        debug "Adding dir to PATH: '$path'"
        set -x -p PATH $path
    end
end

