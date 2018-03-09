export EDITOR=vim
export HISTFILE=~/.sh_history

if [ -d "${profiled="$HOME/.profile.d"}" ]; then
    for f in $profiled/*/*.sh; do
        . "$f"
    done
    for f in $profiled/*.sh; do
        . "$f"
    done
fi
