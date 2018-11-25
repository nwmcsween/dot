export EDITOR=vim
export HISTFILE=~/.sh_history

iappend() {
  if ! eval test -z "\"\${$1##*$3$2$3*}\"" -o -z "\"\${$1%%*$3$2}\"" -o -z "\"\${$1##$2$3*}\"" -o -z "\"\${$1##$2}\"" ; then
    eval "$1=\$$1$3$2"
  fi
}

iprepend() {
  if ! eval test -z "\"\${$1##*$3$2$3*}\"" -o -z "\"\${$1%%*$3$2}\"" -o -z "\"\${$1##$2$3*}\"" -o -z "\"\${$1##$2}\"" ; then
    eval "$1=$2$3\$$1"
  fi
}


if [ -d "${profiled="$HOME/.profile.d"}" ]; then
    for f in $profiled/*.sh; do
        . "$f"
    done
fi
