#!/bin/sh -e
dir="`dirname "$1"`"
redo-ifchange "${dir}"/CMakeLists.txt
( cd "${dir}" && cmake . )
mv "${dir}"/CMakeCache.txt "$3"
