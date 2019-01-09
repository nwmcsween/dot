if defined go; then
  if [ -d ${GOPATH:="$HOME/.go"} ]; then
    export GOPATH
    stripush 'PATH' "$GOPATH/bin" ':'
  else
    echo "GOPATH isn't a directory"
  fi
fi
