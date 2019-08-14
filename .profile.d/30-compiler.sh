CC_ARCH="-mtune=generic"
CC_OPTIMIZE="-O2 -finline-functions -pipe \
-fno-asynchronous-unwind-tables -fno-unwind-tables -fno-ident \
-fno-align-functions -fno-align-loops -fno-align-labels -fno-align-jumps"
CC_WARNING="-Wall -Wformat=2 -Wtype-limits -Werror=nonnull -Wimplicit-int \
-Werror=char-subscripts -Werror=switch -Werror=return-type -Werror=init-self \
-Wpointer-sign -Wshadow -Werror=implicit-function-declaration \
-Werror=misleading-indentation -Werror=sequence-point \
-Werror=shift-count-negative -Werror=shift-count-overflow -Wswitch \
-Wstrict-aliasing -Wstrict-overflow -Werror=array-bounds -Werror=trampolines \
-Wtype-limits -Wbad-function-cast -Werror=sizeof-pointer-memaccess \
-Werror=sizeof-array-argument -Werror=memset-transposed-args -Werror=address \
-Werror=logical-op -Wnull-dereference -Werror=shift-overflow \
-Werror=duplicated-cond -Werror=tautological-compare"

CC_SECURITY="-Wa,--noexecstack -fsanitize-undefined-trap-on-error"

CC_DEBUG="-gdwarf-4"

export CFLAGS="$CC_ARCH $CC_OPTIMIZE $CC_SECURITY $CC_WARNING $CC_DEBUG"
export CXXFLAGS="$CFLAGS"
