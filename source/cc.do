#!/bin/sh -e
cppflags="-I . -I ./include -I ./crypto/include -DHAVE_CONFIG_H"
ldflags="-g -pthread"
if type >/dev/null clang
then
	cc="clang"
	ccflags="-g -pthread -std=gnu11 -Os -Weverything -Wno-conversion -Wno-sign-conversion -Wno-missing-prototypes -Wno-weak-vtables -Wno-packed -Wno-padded -Wpacked -Wno-exit-time-destructors -Wno-global-constructors -Wno-documentation -Wno-documentation-unknown-command -Wno-zero-length-array -Wno-non-virtual-dtor -integrated-as"
elif type >/dev/null gcc
then
	cc="gcc"
	ccflags="-g -pthread -std=gnu11 -Os -Wall -Wextra -Wshadow -Wcast-qual -Wcast-align"
else
	echo 1>&2 "Cannot find clang or gcc."
	exit 100
fi
case "`basename "$1"`" in
cc)
	echo "$cc" > "$3"
	;;
cppflags)
	echo "$cppflags" > "$3"
	;;
ccflags)
	echo "$ccflags" > "$3"
	;;
ldflags)
	echo "$ldflags" > "$3"
	;;
*)
	echo 1>&2 "$1: No such target."
	exit 111
	;;
esac
true
