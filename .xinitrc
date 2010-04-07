setxkbmap de-latin1-nodeadkeys
setxkbmap -option terminate:ctrl_alt_bksp
xset dpms 300 0 0
xrandr --output VGA1 --auto
xset r rate 250
export LC_ALL=de_DE.UTF-8
#exec xterm
exec xmonad
