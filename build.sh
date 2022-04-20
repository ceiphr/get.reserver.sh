#!/usr/bin/env sh

if [ -f "public/index.html" ]; then
    rm "public/index.html"
fi
mkdir public
cat install.sh >public/index.html
