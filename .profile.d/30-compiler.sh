CC_ARCH="-mtune=generic"
CC_OPTIMIZE="-O2 -finline-functions -pipe \
-fno-asynchronous-unwind-tables -fno-unwind-tables -fno-ident \
-fno-align-functions -fno-align-loops -fno-align-labels -fno-align-jumps"
CC_WARNING="-Wformat=2 -Wimplicit-int \
-Werror=char-subscripts -Werror=return-type -Werror=init-self \
-Werror=implicit-function-declaration -Werror=sequence-point \
-Wstrict-aliasing -Wstrict-overflow -Werror=array-bounds -Werror=trampolines"

CC_SECURITY="-Wa,--noexecstack -fsanitize-undefined-trap-on-error"

CC_DEBUG="-gdwarf-4"

export CFLAGS="$CC_ARCH $CC_OPTIMIZE $CC_SECURITY $CC_WARNING $CC_DEBUG"
export CXXFLAGS="$CFLAGS"
