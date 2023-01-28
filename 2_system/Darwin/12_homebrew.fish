if test -n "$BREW_DIR"
    debug "Detected BREW_DIR: $BREW_DIR"

    # NOTE: this script adds a lot of hooks to fish and
    # changes the way $PATH is handled
    #
    # set config_file "$BREW_DIR/share/fish/config.fish"
    # if test -f "$config_file"
    #     debug "Loading Homebrew's fish config"
    #     source "$config_file"
    # end

    set -l brew "$BREW_DIR/bin/brew"
    if test -x "$brew"
        debug "Setting up Homebrew via $brew"
        eval ("$brew" shellenv)
    end
end
