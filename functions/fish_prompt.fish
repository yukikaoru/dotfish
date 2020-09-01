function fish_prompt --description 'Screen Savvy prompt'
    # python venv
    if test -n "$VIRTUAL_ENV"
        echo -n -s (set_color normal) '(' (basename $VIRTUAL_ENV) ') '
    end

    if test "root" = "$USER"
        echo -n -s (set_color magenta) $USER (set_color cyan) (prompt_hostname) (set_color white) ' # '
    else
        echo -n -s (set_color yellow) $USER (set_color green) (prompt_hostname) (set_color white) ' $ '
    end

end

function fish_right_prompt
    echo -n -s (__fish_git_prompt) ' ' (set_color $fish_color_cwd) [(prompt_pwd)] (set_color normal) ' '
end

