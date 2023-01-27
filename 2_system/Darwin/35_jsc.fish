set -l path /System/Library/Frameworks/JavaScriptCore.framework/Versions/Current/Helpers/

if test -d $path
    debug "Adding JavaScriptCore helpers dir to PATH: '$path'"
    fish_add_path -g $path
end
