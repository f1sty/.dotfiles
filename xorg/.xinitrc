#!/bin/sh

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

# setxkbmap -layout "us,ua,jp" -variant ",,kana" -option "grp:alt_shift_toggle,terminate:ctrl_alt_bksp,compose:menu"
setxkbmap -layout "us,ua" -option "grp:alt_shift_toggle,terminate:ctrl_alt_bksp,compose:menu"
xset -dpms
xset s off
# key refresh rate
xset r rate 300 35
# mouse acceleration
xset m 3/2 6
~/.fehbg &
# feh --bg-scale /home/f1st/media/images/wallpapers/lantern2.jpg
# feh --bg-scale /home/f1sty/media/images/wallpapers/kitty.jpg
# nitrogen --save --random --force-setter=xinerama --head=0 --set-scaled media/images/wallpapers &
# nitrogen --save --random --force-setter=xinerama --head=1 --set-scaled media/images/wallpapers &
xsetroot -cursor_name left_ptr
slstatus &
wmname LG3D
keynav
# urxvtd -q -o -f
# export GTK_IM_MODULE=uim
# export QT_IM_MODULE=uim
# uim-xim &
# export XMODIFIERS=@im=uim
# xmobar &
# picom --xrender-sync-fence &
# picom -b --unredir-if-possible --backend xr_glx_hybrid --vsync --use-damage --glx-no-stencil
# picom -b --experimental-backends
picom &
clipmenud &
exec startdwm
# exec spectrwm
# exec awesome
# exec xmonad
