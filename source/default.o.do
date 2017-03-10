#!/bin/sh -e
file="${1#*/}.c"
lib="${1%%/*}"
redo-ifchange "${lib}/${file}" compile
./compile "${3#*/}" "${file}" "${file}.d" "${lib}"
