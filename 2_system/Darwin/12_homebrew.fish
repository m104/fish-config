if test -n "$BREW_DIR"
    debug "Detected BREW_DIR: $BREW_DIR"
    set -l brew "$BREW_DIR/bin/brew"
    if test -x "$brew"
        debug "Setting up Homebrew via $brew"
        eval ("$brew" shellenv)
    end

    set config_file "$BREW_DIR/share/fish/config.fish"
    if test -f "$config_file"
        debug "Loading Homebrew's fish config"
        source "$config_file"
    end
end
