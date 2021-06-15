#!/bin/sh

case "$1" in
    --toggle)
        if [ "$(pgrep -x picom)" ]; then
            pkill picom
        else
            picom
        fi
        ;;
    *)
        if [ "$(pgrep -x picom)" ]; then
            echo ""
        else
            echo ""
        fi
        ;;
esac
