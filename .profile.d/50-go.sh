if type go > /dev/null 2>&1; then
  if [ -d ${GOPATH:-"$HOME/.go"} ]; then
    export GOPATH
    str_ipush 'PATH' "$gopath/bin" ':'
  fi
fi
