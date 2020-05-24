function debug
    if test "$fish_debug" = "true"
        set_color $fish_color_comment
        echo "[debug]" $argv
        set_color normal
    end
end
