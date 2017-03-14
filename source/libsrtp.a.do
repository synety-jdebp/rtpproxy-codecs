#!/bin/sh -e
lib="`basename "$1" .a`"
redo-ifchange "${lib}"/config.status
objects="${lib}/srtp/srtp.o ${lib}/srtp/ekt.o ${lib}/crypto/cipher/cipher.o ${lib}/crypto/cipher/null_cipher.o ${lib}/crypto/cipher/aes_icm.o ${lib}/crypto/cipher/aes.o ${lib}/crypto/hash/null_auth.o ${lib}/crypto/hash/auth.o ${lib}/crypto/hash/hmac.o ${lib}/crypto/hash/sha1.o ${lib}/crypto/math/datatypes.o ${lib}/crypto/math/stat.o ${lib}/crypto/kernel/crypto_kernel.o ${lib}/crypto/kernel/alloc.o ${lib}/crypto/kernel/key.o ${lib}/crypto/kernel/err.o ${lib}/crypto/replay/rdb.o ${lib}/crypto/replay/rdbx.o ${lib}/crypto/replay/ut_sim.o"
redo-ifchange ./archive ${objects}
./archive "$3" ${objects}
