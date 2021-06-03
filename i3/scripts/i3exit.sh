#!/bin/sh


case "$1" in
    lock)
#        betterlockscreen -l dimblur -- --timestr="%H:%M"
		bash ~/.config/i3/scripts/lock.sh
        ;;
    logout)
        i3-msg exit
        ;;
    suspend)
        systemctl suspend
        ;;
    hibernate)
        systemctl hibernate
        ;;
    reboot)
        systemctl reboot
        ;;
    shutdown)
        systemctl poweroff
        ;;
    *)
        echo "Usage: $0 {lock|logout|suspend|hibernate|reboot|shutdown}"
        exit 2
esac

exit 0
