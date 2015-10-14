# needed as replacement for dbus-launch
if [ -d /etc/X11/xinit/xinitrc.d ] ; then
    for f in /etc/X11/xinit/xinitrc.d/?* ; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi

nm-applet &
blueman-applet &
volnoti -t2 &
acpi_listen &
setxkbmap de
exec i3
