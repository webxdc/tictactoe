#!/bin/sh

case "$1" in
    "-h" | "--help")
        echo "usage: ${0##*/} [PACKAGE_NAME]"
        exit
        ;;
    "")
        PACKAGE_NAME=${PWD##*/} # '##*/' removes everything before the last slash and the last slash
        ;;
    *)
        PACKAGE_NAME=${1%.xdc} # '%.xdc' removes the extension and allows PACKAGE_NAME to be given with or without extension
        ;;
esac

rm $PACKAGE_NAME.xdc 2> /dev/null
esbuild tic_tac_toe.js --bundle --minify > tic_tac_toe.min.js
zip -9 --recurse-paths $PACKAGE_NAME.xdc * --exclude README.md webxdc.js webxdc.d.ts tic_tac_toe.js "*.sh" "*.xdc"

echo "success, archive contents:"
unzip -l $PACKAGE_NAME.xdc
