CC_ARCH="-mtune=generic"
#-flto
CC_OPTIMIZE="-Os -pipe -ffunction-sections \
-fno-asynchronous-unwind-tables -fno-unwind-tables -fdata-sections"
CC_WARNING="-Wall -Wformat=2 -Wtype-limits -Werror=nonnull -Wimplicit-int \
-Werror=char-subscripts -Werror=switch -Werror=return-type -Werror=init-self \
-Wpointer-sign -Wshadow -Werror=implicit-function-declaration  -Werror=sequence-point \
-Werror=shift-count-negative -Werror=shift-count-overflow -Wswitch \
-Wstrict-aliasing -Wstrict-overflow -Werror=array-bounds -Werror=trampolines \
-Wtype-limits -Wbad-function-cast -Werror=sizeof-pointer-memaccess \
-Werror=sizeof-array-argument -Werror=memset-transposed-args -Werror=address \
-Werror=logical-op -Wnull-dereference -Werror=shift-overflow \
-Werror=duplicated-cond -Werror=tautological-compare"

CC_SECURITY="-Wa,--noexecstack -fsanitize-undefined-trap-on-error \
-fstack-protector-strong" # -fstack-clash-protection

CC_DEBUG="-fno-ident" #-ggdb

LDFLAGS="-Wl,--as-needed -Wl,--hash-style=both -Wl,-z,defs -Wl,-z,now \
-Wl,-z,relro -Wl,-z,noexecstack -Wl,-icf=safe -Wl,-gc-sections"
#$CC_ARCH $CC_OPTIMIZE $CC_SECURITY $CC_WARNING $CC_DEBUG"

export CFLAGS="$CC_ARCH $CC_OPTIMIZE $CC_SECURITY $CC_WARNING $CC_DEBUG"
export CXXFLAGS="$CFLAGS"
export LDFLAGS
