if [ -d ${PREFIX:="$HOME/.local"} ]; then
  export PREFIX
  stripush 'PATH' "$PREFIX/bin" ':'
  stripush 'LDPATH' "$PREFIX/lib" ':'
fi
