fish_vi_key_bindings

set fish_prompt_pwd_dir_length 0

eval (direnv hook fish)

#
# xenv
#
set -gu ANYENV_ROOT $HOME/.anyenv
set -gu fish_user_paths $ANYENV_ROOT/bin $fish_user_paths
if command -v anyenv 1>/dev/null 2>&1
    source (anyenv init - fish | psub)
end

set -gu PYENV_ROOT $HOME/.pyenv
set -gu fish_user_paths $PYENV_ROOT/bin $fish_user_paths
if command -v pyenv 1>/dev/null 2>&1
    if status is-login && test -z "$TMUX"
        source (pyenv init --path fish | psub)
    end
    source (pyenv init - fish | psub)
    source (pyenv virtualenv-init - fish | psub)
end

#set SDKMAN_DIR  $HOME/.sdkman
#test -s "$SDKMAN_DIR/bin/sdkman-init.sh" and source "$SDKMAN_DIR/bin/sdkman-init.sh"

