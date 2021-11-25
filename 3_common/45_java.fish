set -l plugin \
  $HOME/.asdf/plugins/java/set-java-home.fish

if test -f $plugin
    debug "Running asdf java plugin helper: '$plugin'"
    . $plugin
end

