if which -s go
    set -l gopath (go env GOPATH)
    if test -d $gopath
        debug "Setting GOPATH: '$gopath'"
        set -x GOPATH $gopath
        set -l binpath $gopath/bin
        if test -d $binpath
            debug "Adding dir to PATH: '$binpath'"
            fish_add_path -g $binpath
        end
    end

    set -l goroot (go env GOROOT)
    if test -d $goroot
        debug "Setting GOROOT: '$goroot'"
        set -x GOROOT $goroot
        set -l binpath $goroot/bin
        if test -d $binpath
            debug "Adding dir to PATH: '$binpath'"
            fish_add_path -g $binpath
        end
    end

    set -l gobin (go env GOBIN)
    if test -d $gobin
        debug "Setting GOBIN: '$gobin'"
        set -x GOBIN $gobin
        if test -d $gobin
            debug "Adding dir to PATH: '$gobin'"
            fish_add_path -g $gobin
        end
    end
end

