if type npm > /dev/null 2>&1; then
  if [ -d ${NPMPATH:-"$HOME/.npm/bin"} ]; then
    str_ipush 'PATH' "$NPMPATH" ':'
  fi
fi
