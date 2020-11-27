if which deno >/dev/null
    debug "Detected deno; sourcing completions"
    deno completions fish | source
end

