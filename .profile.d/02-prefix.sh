if [ -d ${PREFIX:=$HOME/lo} ]; then
  export PREFIX
  iprepend 'PATH' "$PREFIX/bin" ':'
  iprepend 'LDPATH' "$PREFIX/lib" ':'
fi
