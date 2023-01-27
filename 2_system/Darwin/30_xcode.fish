set -l path /Applications/Xcode.app/Contents/Developer/Tools

if test -d $path
    debug "Adding Xcode tools dir to PATH: '$path'"
    fish_add_path -g $path
end
