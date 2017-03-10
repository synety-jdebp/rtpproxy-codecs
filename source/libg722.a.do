#!/bin/sh -e
lib="`basename "$1" .a`"
objects="${lib}/g722_decode.o ${lib}/g722_encode.o"
redo-ifchange ./archive ${objects}
./archive "$3" ${objects}
