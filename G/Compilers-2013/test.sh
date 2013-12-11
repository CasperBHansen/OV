#!/bin/sh

if [[ $# -ne 1 ]]; then
    echo "Specify the file to test Paladim with";
    exit;
else
    ARG=$1
    ./SRC/compile.sh && ./BIN/Paladim -ti ${ARG};
fi
