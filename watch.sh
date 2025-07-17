#!/usr/bin/env sh
while inotifywait -r -e modify ./src; do
    ./build.sh
done
