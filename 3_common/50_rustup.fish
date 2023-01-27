if which -s rustup
    debug "Detected rustup; sourcing completions"
    rustup completions fish | source
end
