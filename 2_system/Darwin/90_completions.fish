set -l completions_path "/usr/local/share/fish/vendor_completions.d"

if test -d $completions_path
    for script in $completions_path/*
        set -l script_name (basename $script)
        debug "Loading completion: $script_name"
        source $file
    end
end
