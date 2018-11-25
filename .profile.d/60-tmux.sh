if type tmux > /dev/null 2>&1; then
  [ -z $TMUX ] && tmux -2 new -A -s ${TMUX_SESS:=default}
fi
