fish_vi_key_bindings

set fish_prompt_pwd_dir_length 0

eval (direnv hook fish)

#
# xenv
#
set -x ANYENV_ROOT  $HOME/.anyenv
if test -d "$ANYENV_ROOT"
    set -x PATH $ANYENV_ROOT/bin $PATH
    anyenv init - fish | source
end

set -x PYENV_ROOT $HOME/.pyenv
if test -d "$PYENV_ROOT"
    set -x PATH $PYENV_ROOT/bin $PATH
    pyenv init - fish | source
    pyenv virtualenv-init - fish | source
end

#set SDKMAN_DIR  $HOME/.sdkman
#test -s "$SDKMAN_DIR/bin/sdkman-init.sh" and source "$SDKMAN_DIR/bin/sdkman-init.sh"

