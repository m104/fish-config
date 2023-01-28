set -l docker_dir "$HOME/.docker"

if test -d "$docker_dir"
    set -l docker_file "$docker_dir/init-fish.sh"
    if test -f "$docker_file"
        debug "Detected Docker Desktop; sourcing '$docker_file'"
        source "$docker_file"
    end
end

