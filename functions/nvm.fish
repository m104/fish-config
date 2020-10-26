function nvm
    if test -f "$NVM_ENV_PATH"
        bass source $NVM_ENV_PATH --no-use ';' nvm $argv
    else
        set_color $fish_color_error
        echo "No env script found at \$NVM_ENV_PATH=$NVM_ENV_PATH"
        set_color normal
        false
    end
end
