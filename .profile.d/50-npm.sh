if type npm > /dev/null 2>&1; then
  if [ ! -z ${NPMPATH+x} ] || [ -d ${NPMPATH:="$HOME/.npm/bin"} ]; then
    export NPMPATH
    iprepend 'PATH' "$NPMPATH" ':'
  fi
fi
