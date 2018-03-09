if [ -d ${PREFIX:-"$HOME/lo"} ]; then
  export $PREFIX
  str_ipush 'PATH' "$PREFIX/bin" ':'
  str_ipush 'LDPATH' "$PREFIX/lib" ':'
fi
