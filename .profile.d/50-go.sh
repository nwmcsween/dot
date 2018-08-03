if defined go; then
  if [ -d ${GOPATH:="$HOME/.go"} ]; then
    export GOPATH
    stripush 'PATH' "$gopath/bin" ':'
  else
    echo "GOPATH isn't a directory"
  fi
fi
