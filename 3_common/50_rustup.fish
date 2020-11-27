if which rustup >/dev/null
    debug "Detected rustup; sourcing completions"
    rustup completions fish | source
end
