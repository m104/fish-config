if test -n "$ASDF_DIR"
    set -l plugin "$ASDF_DIR/plugins/java/set-java-home.fish"

    if test -f "$plugin"
        debug "Running asdf java plugin helper: '$plugin'"
        . "$plugin"
    end

    if test -n "$JAVA_HOME"
        set -l path "$JAVA_HOME/bin"
        if test -d "$path"
            debug "Adding Java dir to PATH: '$path'"
            fish_add_path -g "$path"
        end
    end
end

