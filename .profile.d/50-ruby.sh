if defined ruby; then
  if [ -d ${GEMPATH:="$HOME/.gem/ruby/$(ruby -v 2>&1 | cut -f2 -d' ' | cut -f1-2 -d.)"}.0 ]; then
    export RUBY_CFLAGS="$CLANG_FLAGS"
    stripush 'PATH' "${GEMPATH}.0/bin" ':'
  fi
fi
