set -l asdf_file /usr/local/opt/asdf/asdf.fish

if test -f $asdf_file
    debug "Detected asdf; sourcing $asdf_file"
    source $asdf_file
end
