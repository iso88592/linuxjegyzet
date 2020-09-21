#!/bin/bash

if [ -e src/tavjegyzet.pdf ]; then
    rm src/tavjegyzet.pdf
fi

docker build -t mocman/lyx:1.0 . && docker run -v ${PWD}/src:/data:Z mocman/lyx:1.0 /bin/lyx --export-to pdf tavjegyzet.pdf tavjegyzet.lyx
if [ -e src/tavjegyzet.pdf ]; then
    evince src/tavjegyzet.pdf 2>&1 >/dev/null &
else
    echo "Cannot find tavjegyzet.pdf!"
    exit 1
fi
