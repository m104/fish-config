if test -n "$ASDF_DIR"
    set -l asdf_file "$ASDF_DIR/asdf.fish"
    if test -f "$asdf_file"
        debug "Detected asdf; sourcing '$asdf_file'"
        source "$asdf_file"
    end

    set -l completions "$ASDF_DIR"/completions/*.fish
    for file in $completions
        debug "Sourcing ASDF completion file: '$file'"
        source "$file"
    end
end

