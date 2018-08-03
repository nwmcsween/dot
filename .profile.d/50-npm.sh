if defined npm; then
  if [ -d "${NPMPATH:="$HOME/.npm/bin"}" ]; then
    stripush 'PATH' "$NPMPATH" ':'
  else
    echo "NPMPATH isn't a directory"
  fi
fi
