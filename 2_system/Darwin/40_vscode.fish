set -l path "/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

if test -d "$path"
    debug "Adding VS Code bin dir to PATH: '$path'"
    fish_add_path -g "$path"
end
