if defined tmux; then
  if [ -z ${TMUX+x} ]; then
    tmux new -A -s default
  fi
fi
