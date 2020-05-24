if test -n "$GOPATH"
    debug "Detected GOPATH: $GOPATH"
    set -l path $GOPATH/bin
    if test -d $path
        debug "Adding dir to PATH: '$path'"
        set -x -p PATH $path
    end
end

