if defined npm; then
  if [ -d "${NPMPATH:="$HOME/.npm/bin"}" ]; then
    stripush 'PATH' "$NPMPATH" ':'
  fi
fi
