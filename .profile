export EDITOR=vim
export HISTFILE=~/.sh_history

defined() {
  def=$1

  type "$def" >/dev/null 2>&1;
}

strmatch() {
  needle=$1; haystack=$2

  case "$haystack" in $needle) return 0 ;; *) return 1 ;; esac;
}

stripush() {
  dst=$1; src=$2; sep=$3

  eval "test -z \$$dst" && sep=

  if eval "strmatch \"$src|*${sep}${src}|${src}${sep}*|*${sep}${src}${sep}*\" \"\${$dst}\""; then
    return 1
  fi

  eval "$dst=\"$src$sep\$$dst\""

  return 0
}

if [ -d "${profiled:="$HOME/.profile.d"}" ]; then
    for f in $profiled/*.sh; do
        . "$f"
    done
fi
