#!/bin/sh -e
dir="`dirname "$1"`"
redo-ifchange "${dir}"/configure
( cd "${dir}" && ./configure )
mv "${dir}"/config.status "$3"
