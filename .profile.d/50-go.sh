if type go > /dev/null 2>&1; then
  if [ ! -z ${GOPATH+x} ] || [ -d ${GOPATH:="$HOME/.go"} ]; then
    export GOPATH
    iprepend 'PATH' "$GOPATH/bin" ':'
  fi
fi
