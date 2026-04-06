export ENV=$HOME/.config/ksh/kshrc
export MOZ_WEBRENDER=1
export MOZ_ACCELERATED=1
export BROWSER="firefox"

xrdb -merge $HOME/.config/x11/Xresources

xset -b

xidle -timeout 300 &
dunst &
xcompmgr -c -C -t-5 -l-5 -r5 -o0.6 &
nitrogen --restore &
$HOME/.local/bin/bar | lemonbar-xft -B#0b0d0d -F#99ccbf -f"Tamzen:style=Regular:pixelsize=16" &

xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation" 1
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation Button" 2
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation Axes" 6 7 4 5

exec cwm -c ~/.config/cwm/cwmrc
