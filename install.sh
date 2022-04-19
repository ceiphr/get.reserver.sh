#!/usr/bin/env sh

#https://github.com/acmesh-official/get.acme.sh

_exists() {
    cmd="$1"
    if [ -z "$cmd" ]; then
        echo "Usage: _exists cmd"
        return 1
    fi
    if type command >/dev/null 2>&1; then
        command -v "$cmd" >/dev/null 2>&1
    else
        type "$cmd" >/dev/null 2>&1
    fi
    ret="$?"
    return $ret
}

if [ -z "$BRANCH" ]; then
    BRANCH="main"
fi

if _exists curl && [ "${ACME_USE_WGET:-0}" = "0" ]; then
    curl https://raw.githubusercontent.com/ceiphr/reserver/$BRANCH/reserver.sh > reserver.sh && chmod +x reserver.sh
elif _exists wget; then
    wget -O - https://raw.githubusercontent.com/ceiphr/reserver/$BRANCH/reserver.sh | reserver.sh && chmod +x reserver.sh
else
    echo "Sorry, you must have curl or wget installed first."
    echo "Please install either of them and try again."
fi
